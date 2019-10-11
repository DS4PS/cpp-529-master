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





** Welcome



*** { @unit = "", @title = "Course Overview", @foldout }


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





** Week 1 - Identifying Neighborhood Types

*** { @unit = "", @title = "Unit Overview", @foldout  }


## Description

This section introduces functions and vectors, two important building blocks of data programming. 


## Learning Objectives

Once you have completed this section you will be able to 
* create new objects in R 
* use functions 
* summarize vectors by type
  - numeric vectors 
  - character vectors 
  - logical vectors 

## Assigned Reading

Required:

[Assignment](http://ds4ps.org/dp4ss-textbook/ch-033-calculator.html)

[Functions](http://ds4ps.org/dp4ss-textbook/ch-040-functions.html)

[Vectors](http://ds4ps.org/dp4ss-textbook/ch-050-vectors.html)

Background Chapters:

**You will start simple and get practice with these tools on labs. Skim these, then return for reference as you get stuck or want to deepend your knowledge.**

[Learning to Learn R](http://ds4ps.org/dp4ss-textbook/ch-032-learning_r.html)

[Core R](http://ds4ps.org/dp4ss-textbook/ch-010-core-r.html)

[R Studio](http://ds4ps.org/dp4ss-textbook/ch-020-rstudio.html)

[Data-Driven Docs](http://ds4ps.org/dp4ss-textbook/ch-030-data-driven-docs.html)

[Markdown](http://ds4ps.org/dp4ss-textbook/ch-031-markdown.html)




## Lab 

Lab-01 covers the following topics:

* R Markdown (template provided)
* Vectors
  - numeric 
  - character 
  - factor 
  - logical 

**Functions**

```r
names()                 # variable names
head()                  # preview dataset
$ operator              # reference a vector inside a dataset
length()                # vector dimensions
dim(), nrow(), ncol()   # dataset dimensions
sum(), summary()        # summarize numeric vectors
table()                 # summarize factors / character vectors
```

**Data**:

Syracuse tax parcels: [ [documentation](https://ds4ps.org/Data-Science-Class/DATA/syr_parcels.html) ]

```r
URL <- "https://raw.githubusercontent.com/DS4PS/Data-Science-Class/master/DATA/syr_parcels.csv"
dat <- read.csv( URL, stringsAsFactors=FALSE )
head( dat )
```

**Downtown Syracuse**

![](https://github.com/DS4PS/dp4ss-textbook/blob/master/figures/downtown-syr.png?raw=true)

**All 42,000 Parcels**

![](https://github.com/DS4PS/dp4ss-textbook/blob/master/figures/syracus-parcels.png?raw=true)




*** { @unit = "Due Aug 26th", @title = "Discussion Topic: The Promise of Big and Open Data", @assignment, @foldout  }

## The Promise of Big, Open Data


The world is simultaneously generating more data than it has ever before, as well as pushing for policies for making government data more accessible and democratic. These trends and movements is an important enabling aspect of data science, becuse it provides opportunity for real insights that can change our understanding of systems and allow us to hold institutions accountable.

So ignoring potential problems with big and open data for now, read about two interesting cases where big and open data have offered deep insights into city planning and human nature. 

"[A Data Analyst's Blog](https://www.npr.org/sections/alltechconsidered/2014/11/28/367046864/a-data-analysts-blog-is-transforming-how-new-yorkers-see-their-city
) Is Transforming How New Yorkers See Their City", NPR, Nov 2018.

[How a blog saved OK Cupid](https://fivethirtyeight.com/features/christian-rudder-dataclysm-okcupid/), FiveThirtyEight Blog, Nov 2014.


<br> 

**ASSIGNMENT:** 

> For your discussion topic this week, find one data-driven blog post from Ben Wellington's [I Quant NY](http://iquantny.tumblr.com/) and/or OK Cupid's [OK Trends](https://theblog.okcupid.com/tagged/data) where you discovered something cool that you did not know, and share it with the group. In your post highlight what is interesting about the example, and what data made it possible.

**Please post your reflection as a new pin on [YellowDig](https://canvas.asu.edu/courses/29528/assignments/656491).**

<br>

You can also check out Ben's [Ted Talk](https://www.youtube.com/watch?v=6xsvGYIxJok), or this short interview. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/ZTdPpoUp25w?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

<br>



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


