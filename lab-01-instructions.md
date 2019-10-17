---
layout: lab
title: Lab 01 - Measurement
image: microscope.png
image-width: 150px
---



<a class="uk-button uk-button-default" href="https://canvas.asu.edu/courses/37703/assignments/840891">Submit Lab 01</a>


## Overview

Experts have developed myriad ways to define neighborhood quality. For example: 

*Inspired by the UN’s influential Human Development Index for nations, their American Human Development Index develops measures of well-being for America’s 435 congressional districts (plus Washington, D.C.). This allows us to see how patterns of uneven and unequal socio-economic well-being exist not just between but within many of America’s largest metros. The overall index is based on three key dimensions of well-being:*

* *A long and healthy life, as measured by life expectancy at birth.* 
* *Access to knowledge, based on school enrollment for people ages 3 to 24 (weighted one third) and educational degree attainment for those 25 and older (weighted two-thirds).* 
* *Standard of living, based on median earnings for full- and part-time workers 16 and older.* 

*The overall American Human Development Index is graded on a one to ten scale, with ten being the highest score.*  [ [cite](https://www.citylab.com/life/2015/04/the-geography-of-well-being/391188/) ] 

Or consider a study looking at how low-levels of neighborhood quality or specific deficiencies might impact residents:

*We use data on intergenerational social mobility by neighborhood to examine how social and physical environments beyond concentrated
poverty predict children’s long-term well-being. First, we examine neighborhoods that are harsh on children’s development: those characterized by high levels of violence, incarceration, and lead exposure....Our explanatory variables are constructed from the Community Survey of the PHDCN, which interviewed a representative sample of Chicago residents about their neighborhood social environments in 1995 and 2002 (combined N of ∼12,000); violent crime rates per 100,000 population from 1995 to 2000, derived from offenses reported by citizens to the police; incarceration rates per population from 1995 to 2000, derived from prison admission data; and lead exposure among children from 1995 to 1997, derived from more than 150,000 blood-level tests conducted by Chicago’s health department.* 

*Manduca, R., & Sampson, R. J. (2019). Punishing and toxic neighborhood environments independently predict the intergenerational social mobility of black and white children. Proceedings of the National Academy of Sciences, 116(16), 7772-7777.* [ [pdf](https://github.com/DS4PS/cpp-529-master/raw/master/articles/social-mobility/toxic-neighborhoods-and-social-mobility.pdf) ]

These are examples of how different experts and scholars have attempted to operationalize quantitative measures of neighborhood quality in order to better understand how neighborhoods impact the lives of the residents that live there. This sort of measurement is not always straight-forward. When data is sparse or research is poorly-implemented you will often see neighborhood quality measured using some simple proxy variable, such as the poverty rate. The sorts of proxies can be overly-simplistic and as a result not always useful or informative. 

A better way to approach the task, from a measurement theory perspective, is to think about a neighborhood in the same way that psychologists think about human behavior. Can we measure the personality of a neighborhood the same way that [psychologists measure personality types](https://www.headstuff.org/topical/science/myers-briggs-big-five/)? By identifying the most salient dimensions of a personality and developing reliable instruments to precisely measure them. 

**Lab Instructions**

For this lab you will explore the creation of instruments used to collect data on things that we care about in social sciences but that are hard to directly measure: happiness, health, well-being, etc. 

You will select an existing instrument that is used often in research and learn about the items that comprise the instrument. You will then do an exercise using census data to construct your own index using *items* (census variables) that ensure high reliability. 

**Part One**

Select one of the following instruments to review:

- [SF-36 Measure of Health](https://www.healthknowledge.org.uk/public-health-textbook/research-methods/1c-health-care-evaluation-health-care-assessment/measures-health-status) [ [questions](https://www.brandeis.edu/roybal/docs/SF-36_website_PDF.pdf) ] [ [benchmarks pp 3135-3136](https://www.dropbox.com/s/318rw6obrc3gne4/SF-36-Health-Survey-Update.pdf?dl=1) ] 
- [Oxford Happiness Index](http://content.time.com/time/magazine/article/0,9171,1015832,00.html) [ [questions & benchmarks](http://www.blake-group.com/sites/default/files/assessments/Oxford_Happiness_Questionnaire.pdf) ] [ [reliability](http://www.louisianaparadox.com/wp-content/uploads/2011/01/Hills-Argyle-2002.pdf) ] 
- [Grit (Duckworth index)](http://freakonomics.com/podcast/grit/) [ [questions](https://angeladuckworth.com/grit-scale/) ] [ [benchmarks & reliability](https://www.dropbox.com/s/0y545gn2withb5e/DuckworthPetersonMatthewsKelly_2007_PerseveranceandPassion.pdf?dl=0) ] 
- [The Big Five (personality index)](https://www.psychologytoday.com/us/blog/give-and-take/201309/goodbye-mbti-the-fad-won-t-die) [ [questions & benchmarks](https://openpsychometrics.org/tests/IPIP-BFFM/) ] [ [scoring](https://ipip.ori.org/new_ipip-50-item-scale.htm) ] 

**Answer the following questions about your instrument.** 

Use Google or Google Scholar (for academic references) to find information about your instrument as needed.

1. What is the latent construct that your instrument measures? Describe it in a paragraph.  
1. Explain the instrument that has been developed to measure the construct. 
  - How many questions (items) does it have? 
  - How are responses reported (e.g yes/no, Likert scale, or otherwise)?
  - Is it self-administered or are items recorded by an observer? 
  - How is the index calculated? 
  - What is the scale for the index (for example, scores can range from 4 to 8).  
1. Report a Cronbach's alpha score of your instrument (or another reliability measure) that has been published in a legitimate academic outlet. Report the article citation and include the article with your submission.  
1. Is this instrument appropriate for high-stakes performance reviews? For example, if your health improves you receive a discount on your insurance premiums. Or phrased another way, can someone manipulate their responses to get a high score? The LSAT is an example where someone can NOT game their responses to score higher. On surveys, however, people tend to over-estimate their height and under-report their income.  

**OPTIONAL**: Complete the survey and calculate your score on the index. How do you know if your score is high or low (i.e. what is the average response from the general population)? Where does this index benchmark come from?

The following textbook chapter is available as a reference:

*Kimberlin, C. L., & Winterstein, A. G. (2008). Validity and reliability of measurement instruments used in research. American journal of health-system pharmacy, 65(23), 2276-2284.* [ [pdf](https://github.com/DS4PS/cpp-529-master/raw/master/articles/measurement/reliabillity-and-validity-of-measures.pdf) ]



<br>

-----------------------------------------------------------------------------

<br>




**Part Two**

Now you get a chance to develop your own index. Your task is to create a reliable index of Community Well-Being. A community is healthy if we expect citizens to achieve a good quality of life and high economic stability while living there.

The app can be found here:

[https://jdlecy.shinyapps.io/measurement-lab/#section-warmup](https://jdlecy.shinyapps.io/measurement-lab/#section-warmup) 

Use the Census Data on the “Index Design” tab to complete this part of the assignment. You must select 5 variables from a list of 30 candidate variables to create your index. 

The reliability of an index is measured by calculating a Cronbach’s Alpha score, a statistic that varies from 0 (data that is all noise) to 1 (an index that measures the outcome very precisely). By convention, an index must have a Cronbach’s Alpha measure above 0.6 to be considered reliable, and above 0.8 it is considered highly-reliable. All of the survey questions on a well-designed index produce highly-correlated responses since they are meant to measure the same construct. The higher the correlations, the higher the Cronbach’s Alpha score.

**Your index must have a Cronbach’s Alpha score of at least 0.70.** The Cronbach’s Alpha score is calculated for you based upon the variables you have selected. You have also been provided with a warm-up exercise for practice. Sets of highly-correlated items will have higher alpha scores.

You can approach the task by constructing and index where a high score on the scale would indicate well-being. Alternatively, you can identify items that measure the absence of well-being (the high and low ends of the scale can easily be reversed). Either way, you should seek to create a reliable index.

**STEP 1:**

Select the five variables you would like to use for your Community Well-Being Index. The selected variables must generate a Cronbach's Alpha of AT LEAST a 0.70 in order to be reliable. Report which variables you have selected, and the alpha you have achieved.

**STEP 2:**

Take a screen shot of the correlation structure and alpha score for these variables. Include the screenshot in your report.

**STEP 3:**

Describe the latent construct that you believe you are measuring. Do you think your variables are a good measure of community well-being, or are they measuring a specific dimension of strength or something else completely?

For example, IQ and creativity are both dimensions of intelligence. They are typically measured using very different types of tests (indices). When creating a new index it is helpful to be clear about what you believe the measure represents.

**WHAT TO SUBMIT:**

Report the answers to questions above in the same document as Part I of the assignment. Submit your results via Canvas. 




<a class="uk-button uk-button-default" href="https://canvas.asu.edu/courses/37703/assignments/840891">Submit Lab 01</a>

<br>

----

<br>
