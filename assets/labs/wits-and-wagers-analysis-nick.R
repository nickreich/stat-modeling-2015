## wits and wagers analyses
## Nick Reich + class

library(dplyr)

dd <- tbl_df(dat)
dd <- dd[-1,]

dd_new <- sapply(dd[,c(-1, -8)], as.numeric)

dd <- data.frame(name=dd$name, dd_new)

## plot raw data
qplot(round_number, correct, data=dd, group=name, geom=c("point", "smooth"), color=name, se=FALSE, method="lm")
qplot(round_number, correct, data=dat, group=name, color=name, se=FALSE) + 
    stat_summary(aes(group = name), fun.y="mean", geom = "line", size=1)


## aggregate data
adat <- aggregate(dd$correct, by=list(name=dd$name, round=dd$round_number), FUN=mean)
qplot(round, x, color=name, data=adat, geom=c("point", "line"))

adat2 <- aggregate(adat$x, by=list(name=adat$name), 
                   FUN=function(x) c("max"=max(x), "min"=min(x), "range"=max(x)-min(x), "count"=length(x)))


## run some GEE models
library(gee)
m_ind <- gee(correct~round_number, id=name, family=binomial, data=dd, corstr="independence")
m_exch <- gee(correct~round_number, id=name, family=binomial, data=dd, corstr="exchangeable")
m_unstr <- gee(correct~round_number, id=name, family=binomial, data=dd, corstr="unstructured")
summary(m_ind)$coef
summary(m_exch)$coef
summary(m_unstr)$coef

library(lme4)
mdl_re <- glmer(correct~ round_number + (1|name), family=binomial, data=dd)
mdl_re_slope <- glmer(correct ~ round_number + (round_number|name), family=binomial, data=dd)

res <- ranef(mdl_re)
dotchart(as.matrix(res$name))


dd$ci_std <- with(dd, (ci_upper-ci_lower)/true_value)
p <- ggplot(dd, aes(x = ci_std, y = name, color=factor(round_number))) + 
    geom_point() +
    facet_wrap(~correct) +
    ggtitle("Confidence Interval Ranges for Correct and Incorrect Responses") + xlim(0, 100) +
    labs(x = "Confidence Interval Range", y = "Participant Initials")
p
