---
layout: page
title: Project Description
---

#### Project Assignment
For the project you will create, in small groups, a thorough analysis of a particular dataset. The analysis project will have components completed by the group and by each individual student. Each group will prepare a formal written report and will present their project to the class in a ~30-minute presentation. In this presentation, each group member will have 5 minutes to present his/her topic. Additionally, each group will create a 1 page handout (two-sided, if desired) to accompany the group presentation. The handout provides an opportunity to summarize key findings, show central figures, and/or provide greater detail or explanation about pieces of the project.

Each group will be expected to hand in the following items

1. a PDF file containing the data analysis write-up that has been typeset using RMarkdown/knitr,
2. a single paper copy of the final report,
3. a PDF file containing the presentation handout, and
4. a single paper copy of the presentation handout.

Choice of a good dataset will be particularly important. Each group should consider multiple datasets as possibilities and will need to have their final choice approved by the instructor.

#### Guidelines for the project write-up

Overall, the project write-up should be written in clear, concise prose, suitable for publication in a scientific journal. No code should be shown in the write-up, although it is expected that results provided in the write-up will be dynamically generated (i.e. if you report the results from a regression, you are calling the results directly from R and not inputting the numbers directly into the .Rmd file). You will need to be very judicious in your choices of what to include in the write-up, only leaving the items most central to the write-up's overall goals and theses. The topics chosen by individual group members should complement each other, i.e. there should be no major topic overlap, not everyone should do a power simulation, etc... 

Please follow the structure and page limits given below:

* cover page (title, names, table of contents): 1 page
* group data analysis (including tables/figures): 2 pages
* each individual data analysis (including tables/figures): 3 pages
* conclusion/discussion: 1 page

No page-cramming: i.e. nothing smaller than 11-point font, no less than 1 inch margins all around.

_Group Data Analysis_

The group-written data analysis will provide a brief summary of key features of the dataset. You should define and summarize each variable that will be used, either in a table or graphically, or both. Any central hypotheses or relationships that will be tested or explored should be defined here. At least a few sentences of context and description of the dataset should be included. This section should include a few tables and/or figures and should be no more than two pages long. Description of how missing data was handled should be included here (see more detail below).

_Individual Data analyses_

Additionally, each member of the group will lead a particular thread of analysis and/or dataset exploration that expands on a topic that we have covered in class, or on a new topic entirely. The write-up for each individual data analysis should not exceed three pages, including tables and figures. 

For this independent data analysis portion of the project, the two major paths that you can take are 

1. to fit a specialized model to the data (i.e. not just MLR with main effect covariates) and interpret the output from the methods that you have used. Examples here include regression trees, incorporating natural splines into an MLR model, or a mixed-effects model.
2. to create a simulation study to determine how much power a particular type of analysis has to detect a hypothetical association between variables in your dataset. 
  - For example, you could use a covariate resampling approach (to be described in class) to simulate new versions of your dataset that retain the covariate correlation structures present in your data, simulate new outcomes with known association(s), and fit a model to try and identify those association(s). This could be particularly compelling if you worked with a teammate who ran an analysis using one particular method and you calculated the power for their analytic method. 
  - As another example, you could run a simulation that tries to replicate the results of previous studies that show the pitfalls of backwards or forwards selection. You could design a simulation to evaluate the effectiveness of forward and/or backward selection methods for identifying associated predictor variables.

Examples of topics

* regression trees
* natural or B-splines
* non-linear regression
* mixed/random effects models
* a comparison and exploration of model-selection methods, e.g. using different criteria (PRESS, Mallow's Cp, AIC, BIC, adjusted R^2), or stepwise-selection methods
* ... or any other slightly more advanced model-fitting method (please feel free to choose something that you are interested in learning more about, but not something that you have already done) 

The data analysis write-up will contain a section for each group member's analysis and a conclusion that summarizes the results. 

_Missing Data_

Many datasets will have missing data in them. Your group will be expected to come up with an justifiable approach for dealing with any missingness in the data (i.e. multiple imputation, sensitivity analyses). Within a group, the approaches taken to deal with missing data should be consistent.

#### Project grading
Your project grade makes up 40% of your final grade for the class and will be calculated as follows:

* The final product produced by the group 50 points
  * 20 points: group data summary (clarity of data summary, quality of graphics/tables, adequate and accurate explanations of data, specific hypotheses defined, results summarized in conclusion/discussion section)
  * 15 points: group presentation (time limits adhered to, project clearly summarized and defined, key findings highlighted, polished presentation, handout provides useful detail and/or explanations)
  * 10 points: uniformity of presentation (individual write-ups have same look and feel, the project feels like a single work, not too disjointed, topic coordination a plus)
  * 5 points: project details (page limits adhered to, appropriate sectioning, etc...)
* Individually prepared data analysis 50 points
  * 35 points: overall quality (clear and accurate description of methods/models used, correct implementation and interpretation of method(s) used, appropriate use of equations to show what methods/models have been used, appropriate use of graphics/tables to support central results, summary of key results)
  * 15 points: individual presentation (clear statement/summary of goals and central results, use of figures rather than text to illustrate central ideas, time limit adhered to)

To evaluate group participation and contributions, I will be using the following approach to evaluate each of your contributions to the project. Each student will be given 100 points to allocate among your teammates (excluding yourself). The more points you give to a teammate, the more you are indicating they contributed to the project. You cannot allocate the same number of points for any two team members. I reserve the right to intervene to correct gross imbalances in allocations if necessary. The number of points that you receive from your teammates will be summed, divided by 100, and then used as a multiplier on the final grade for the group project. 

As an example: Your group receives 40/50 points for the "final product produced by the group". You have three teammates who give you scores of 35, 40 and 30, respectively. Therefore, you receive a total of 105 points from your teammates. So your final "group" grade is (40/50) * (105/100) = 0.84 = 42/50.


#### Deadlines
* Fri Mar 27: Groups propose a dataset
* Fri Apr 3: Individual topics proposed (1 paragraph summary, submitted to instructor on Google Drive)
* Mon Apr 13: Draft of group data description write-up due, 5pm
* Mon Apr 20: Draft of individual data analysis due, 5pm
* Thu Apr 23: Group 1 (and Group 2?) present, project handed in on Fri 4/24 by 5pm
* Tue Apr 28: Group 3 (and Group 2?) presents, project handed in on Wed 4/29 by 5pm

