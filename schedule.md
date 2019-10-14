---
layout: schedule
title: Schedule

canvas: 
  assignment_url: 'https://canvas.asu.edu/courses/29528/assignments'
  
---
 
<!--- 
New sections start with 2 stars:  ** Section Title
New units start with 3 stars:     *** {Unit Metadata}
-----------------------------start example
** Section-I
*** { @unit = "15th Nov", @title = "Course Overview", @reading, @lecture, @assignment, @foldout }
-----------------------------end example
Unit Metadata is comprised of:
@unit - date or number
@title - unit name
@reading - turn on reading icon
@assignment - turn on lecture icon
@lecture - turn on lecture icon
@foldout - activate unit content (allow foldout)
Submit Button - <a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">Submit Lab</a>
-->





** Course Overview



*** { @unit = "", @title = "Community Analytics", @foldout }


## A Theory of Neighborhoods

*Hundreds of studies have demonstrated that the odds of economic success vary across neighborhoods. The far more difficult question is whether that’s because neighborhoods nurture success (or failure), or whether they just attract those who would succeed (or fail) anyway.*

**Neighborhoods Matter** 

Urban policy scholars have long made the case for the primacy of place. 

*Ellen, I. G., & Turner, M. A. (1997). Does neighborhood matter? Assessing recent evidence. Housing Policy Debate, 8(4), 833-866.* [ [pdf]() ]

Economists have come to the conclusion that neighborhoods matter more than they expected. See Justin Wolfers: Why the New Research on Mobility Matters: An Economist's View; The New York Times, May 4, 2015. [ [link](https://www.nytimes.com/2015/05/05/upshot/why-the-new-research-on-mobility-matters-an-economists-view.html) ] [ [pdf]() ]

And there is growing evidence that neighborhoods can be used as a *treatment* of sorts to aid social mobility, i.e. that programs which help low-income families move to stable and thriving neighborhoods have significant long-term impact on the mobility of the kids. See the Moving to Opportunity Study [Part 1](https://opportunityinsights.org/paper/newmto/) and [Part 2](https://www.citylab.com/equity/2019/08/affordable-housing-assistance-voucher-seattle-neighborhoods/595423/).

**The Quality of Neighborhoods Varies Significantly**

*The report shows how America’s yawning inequality extends beyond just money to wide discrepancies in health, knowledge and education, too. As Stanford economist Rebecca Diamond has suggested, inequality of well-being compounds earnings inequality. Her research finds that more well-off and high-skilled Americans accrue additional benefits from living in neighborhoods with better schools, less crime and enhanced public services. Meanwhile, the less skilled and moneyed Americans are shunted off to communities with low quality schools and services. America’s economic divide registers not just in what we can afford to buy, but in the education we have the opportunity to attain and, most basically, in how much time we have to live.*

The Geography of Well-Being, CITYLAB, Richard Florida, APR 23, 2015 [ [link](https://www.citylab.com/life/2015/04/the-geography-of-well-being/391188/) ] 

**A Theory of Neighborhood Change**

Neighborhoods don't start out bad. They typically begin as vibrant middle-class developments that pass through various life-cycles over time. Why do some neighborhoods remain stable and thriving, and others experience drastic decline and stagnation? Theories of neighborhod change have been developed to answer that question. 

*Pitkin, B. (2001). Theories of neighborhood change: Implications for community development policy and practice. UCLA Advanced Policy Institute, 28.* [ [pdf]() ]

For reference: 

*Temkin, K., & Rohe, W. (1996). Neighborhood change and urban policy. Journal of planning education and research, 15(3), 159-170.* [ [pdf]() ]

*Grigsby, W., Baratz, M., Galster, G., & Maclennan, D. (1987). The dynamic of neighborhood change and decline. Progress in Planning, 28, 1.* [ [pdf]() ]

*Schwirian, K. P. (1983). Models of neighborhood change. Annual review of Sociology, 9(1), 83-102.* [ [pdf]() ]

**Data-Driven Models of Neighborhood Change**

The early theoretical work has been augmented by data-driven models that help [predict which neighborhoods are most likely to change over time](http://urbanspatialanalysis.com/portfolio/predicting-gentrification-using-longitudinal-census-data/). 

In this class we will specifically draw upon approaches described in:

*Firschein, J. (2015). Putting data to work: data-driven approaches to strengthening neighborhoods. IFC Bulletins chapters, 38.* _**Market Value Analysis: A Data-Based Approach to Understanding Urban Housing Markets, pp 41-60.**_ [ [pdf]() ]

And recent academic work that uses census data and machine learning to identify patterns in community development: 

*Delmelle, E. C. (2017). Differentiating pathways of neighborhood change in 50 US metropolitan areas. Environment and planning A, 49(10), 2402-2424.* [ [pdf]() ]

Both articles share a model where they use census data and clustering techniques to classify neighborhoods by type, then examine how each type is likely to change over time. 

![](assets/img/strong-transitional-distressed-hoods.png) 




## Community Analytics

<br>
<br>

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">Submit Lab</a>

<br>
<br>


## Census Data


In this course we cover the foundations of data programming with the R language. In order to create robust and dynamic analysis we need to use a couple of tools that were built to leverage the power of R and create compelling narratives. R Studio helps you manage projects by organizing files, scripts, packages and output. Markdown is a simple formatting convention that allows you to create publication-quality documents. And R Markdown is a specific version of Markdown that allows you to combine text and code to create data-driven documents. 

[CH-01 Core R](http://ds4ps.org/dp4ss-textbook/ch-010-core-r.html)

[CH-02 R Studio](http://ds4ps.org/dp4ss-textbook/ch-020-rstudio.html)

[Data-Driven Docs](http://ds4ps.org/dp4ss-textbook/ch-030-data-driven-docs.html)

[A Markdown Guide](http://ds4ps.org/dp4ss-textbook/ch-031-markdown.html)

<br>

![](https://github.com/DS4PS/dp4ss-textbook/blob/master/figures/r-tools-overview.png?raw=true)

<br>
<br>


## GIS

[Getting Started with R Markdown](https://rmarkdown.rstudio.com/lesson-1.html)

You will have plenty of practice with these tools this semester. You will submit your labs as knitted R Markdown (RMD) files.

[![](https://github.com/DS4PS/ds4ps.github.io/blob/master/gifs/NewCodeChunk/NewCodeChunk_media/NewCodeChunk.gif?raw=true)](../gifs/NewCodeChunk/NewCodeChunk.html)

<br>
<br>




*** { @unit = "", @title = "Assignments",  @foldout }


<br>
<br>

Overview of expectations. 

Description of Project. 

<br>
<br>




*** { @unit = "", @title = "Getting Help",  @foldout   }


<br>
<br>
How to contact Professor Howell
How to get help on labs 

* Instructions for creating new questions
* Posting reproducible examples 

<br>
<br>





** Week 1 - Measurement & The Theory of Neighborhoods

*** { @unit = "", @title = "Unit Overview", @foldout  }


## Description

This section introduces the field of measurement theory in psychology and social sciences, which is used to create scales or indices that allow us to observe and document things that do

*Many variables studied by psychologists are straightforward and simple to measure. These include sex, age, height, weight, and birth order. You can often tell whether someone is male or female just by looking. You can ask people how old they are and be reasonably sure that they know and will tell you. Although people might not know or want to tell you how much they weigh, you can have them step onto a bathroom scale. Other variables studied by psychologists—perhaps the majority—are not so straightforward or simple to measure. We cannot accurately assess people’s level of intelligence by looking at them, and we certainly cannot put their self-esteem on a bathroom scale. These kinds of variables are called **constructs** (pronounced CON-structs) and include personality traits (e.g., extraversion), emotional states (e.g., fear), attitudes (e.g., toward taxes), and abilities (e.g., athleticism).* [ [Understanding Psychological Measurement](https://opentextbc.ca/researchmethods/chapter/understanding-psychological-measurement/) ]

We are less interested in 

*A new study by the Harvard economists Raj Chetty and Nathaniel Hendren, when read in combination with an important study they wrote with Lawrence Katz, makes the most compelling case to date that good neighborhoods nurture success... These two new studies are the most powerful demonstration yet that neighborhoods — their schools, community, neighbors, local amenities, economic opportunities and social norms — are a critical factor shaping your children’s outcomes. It’s an intuitive idea, although the earlier evidence for it had been surprisingly thin. As Sean Reardon, a professor of education and sociology at Stanford, said of the study, “I think it will change some of the discussion around how where children grows up matters.”*

But we will use some of the tools developed in psychometrics to begin developing a construct a

## Learning Objectives

Once you have completed this section you will be able to 
* Define a construct 
* 

## Assigned Reading

Required:

Schäffer, U. (2007). Management accounting & control scales handbook. Springer Science & Business Media. [ [2-page PDF]() ] 


Grigsby, W., Baratz, M., Galster, G., & Maclennan, D. (1987). The dynamic of neighborhood change and decline. Progress in Planning, 28, 1.

Background Chapters:




## Lab 

Experts have developed myriad ways to define neighborhood quality. For example: 

*Inspired by the UN’s influential Human Development Index for nations, their American Human Development Index develops measures of well-being for America’s 435 congressional districts (plus Washington, D.C.). This allows us to see how patterns of uneven and unequal socio-economic well-being exist not just between but within many of America’s largest metros. The overall index is based on three key dimensions of well-being:*

* *A long and healthy life, as measured by life expectancy at birth.* 
* *Access to knowledge, based on school enrollment for people ages 3 to 24 (weighted one third) and educational degree attainment for those 25 and older (weighted two-thirds).* 
* *Standard of living, based on median earnings for full- and part-time workers 16 and older.* 

*The overall American Human Development Index is graded on a one to ten scale, with ten being the highest score.*  [ [cite](https://www.citylab.com/life/2015/04/the-geography-of-well-being/391188/) ] 

Or consider a study looking at how low-levels of neighborhood quality or specific deficiencies might impact residents:

*We use data on intergenerational social mobility by neighborhood to examine how social and physical environments beyond concentrated
poverty predict children’s long-term well-being. First, we examine neighborhoods that are harsh on children’s development: those characterized by high levels of violence, incarceration, and lead exposure....Our explanatory variables are constructed from the Community Survey of the PHDCN, which interviewed a representative sample of Chicago residents about their neighborhood social environments in 1995 and 2002 (combined N of ∼12,000); violent crime rates per 100,000 population from 1995 to 2000, derived from offenses reported by citizens to the police; incarceration rates per population from 1995 to 2000, derived from prison admission data; and lead exposure among children from 1995 to 1997, derived from more than 150,000 blood-level tests conducted by Chicago’s health department.* 

*Manduca, R., & Sampson, R. J. (2019). Punishing and toxic neighborhood environments independently predict the intergenerational social mobility of black and white children. Proceedings of the National Academy of Sciences, 116(16), 7772-7777.* [ [pdf]() ]

These are examples of how different experts and scholars have attempted to operationalize quantitative measures of neighborhood quality in order to better understand how neighborhoods impact the lives of the residents that live there. This sort of measurement is not always straight-forward. When data is sparse or research is poorly-implemented you will often see neighborhood quality measured using some simple proxy variable, such as the poverty rate. The sorts of proxies can be overly-simplistic and as a result not always useful or informative. 

A better way to approach the task, from a measurement theory perspective, is to think about a neighborhood in the same way that psychologists think about human behavior. Can we measure the personality of a neighborhood the same way that [psychologists measure personality types](https://www.headstuff.org/topical/science/myers-briggs-big-five/)? By identifying the most salient dimensions of a personality and developing reliable instruments to precisely measure them. 

**Part One**

Select a case study, report on the instrument that was developed to measure a latent construct. 

* What is the construct? Describe it in a paragraph. 
* What instrument has been developed to measure it? 
  - Briefly describe the instrument 
  - How many questions does it have? 
  - Is it self-administered or are items recorded by an observer? 
  - How is the index calculated? 
  - What is the scale for the index (for example, scores can range from 4 to 8). 
* Is the instrument **reliable**? Identify an academic study that reports a **Cronbach's alpha** score for the instrument. Are instruments with that alpha considered reliable instruments? 
* Is the instrument **valid**? Is it measuring a meaningful construct? Report whether you are able to find research that reports evidence of predictive validity. If you know that someone scored a high on the index, would that tell you something about how that individual would perform in some specific context? For example, high IQ predicts better performance on specific analytical tasks. 

**Part Two**

Now you get a chance to develop your own index. Your task is to create a reliable index of Community Well-Being. A community is healthy if we expect citizens to achieve a good quality of life and high economic stability while living there.

The app for Part I can be found here:

https://jdlecy.shinyapps.io/measurement-lab/#section-warmup

Use the Census Data on the “Index Design” tab to complete this part of the assignment. You must select 5 variables from a list of 30 candidate variables to create your index. 

The reliability of an index is measured by calculating a Cronbach’s Alpha score, a statistic that varies from 0 (data that is all noise) to 1 (an index that measures the outcome very precisely). By convention, an index must have a Cronbach’s Alpha measure above 0.6 to be considered reliable, and above 0.8 it is considered highly-reliable. All of the survey questions on a well-designed index produce highly-correlated responses since they are meant to measure the same construct. The higher the correlations, the higher the Cronbach’s Alpha score.

Your index must have a Cronbach’s Alpha score of at least 0.6. The Cronbach’s Alpha score is calculated for you based upon the variables you have selected. You have also been provided with a warm-up exercise for practice.

You can approach the task by constructing and index where a high score on the scale would indicate well-being. Alternatively, you can identify items that measure the absence of well-being (the high and low ends of the scale can easily be reversed). Either way, you should seek to create a reliable index.

STEP 1:

Select the five variables you would like to use for your Community Well-Being Index. The selected variables must generate a Cronbach's Alpha of AT LEAST a 0.6 in order to be reliable. Report which variables you have selected, and the alpha you have achieved.

STEP 2:

Take a screen shot of the correlation structure and alpha score for these variables. Include the screenshot in your report.

STEP 3:

Describe the latent construct that you believe you are measuring. Do you think your variables are a good measure of community well-being, or are they measuring a specific dimension of strength or something else completely?

For example, IQ and creativity are both dimensions of intelligence. They are typically measured using very different types of tests (indices). When creating a new index it is helpful to be clear about what you believe the measure represents.

WHAT TO SUBMIT

Record your findings in the same document as Part II of the assignment. Submit via Canvas.
Create a Yellowdig post with (1) your list of variables, (2) your interpretation of what the index measures, and (3) a screen shot of your correlation matrix and Cronbach’s Alpha score.





*** { @unit = "Due Aug 26th", @title = "Discussion Topic: The Promise of Big and Open Data", @assignment, @foldout  }



*** { @unit = "Due Aug 29th", @title = "Lab 01", @assignment, @foldout  }

<br>
<br>

## Lab-01 - Practice with Vectors

<a class="uk-button uk-button-default" href="https://ds4ps.org/cpp-526-fall-2019/labs/lab-01-instructions.html">LAB-01 Instructions</a>

## Submit Solutions to Canvas:

<a class="uk-button uk-button-primary" href="https://canvas.asu.edu/courses/29528/assignments/750552">SUBMIT LAB-01</a>

<br>
<br>








** Week 2 - Mapping Groups 


** Week 3 - Intro to Census Data 


** Week 4 - Dot Density Plots 


** Week 5 - Transitions  


** Week 6 - Models of Neighborhood Change 


** Week 7 - Final Project 








<br>
<br>

-----

<br>
<br>





<style> 
body {
   font-family: "Roboto", sans-serif;
}
 
p.italic {
  font-style: italic;
  color: black !important;
}
td {
  text-align: left;
}
td.i {
  text-align: center;
}
iframe {
  align: middle;
}
article {
  padding-left:20%;
}
em {
  color: black !important;
}
</style>


