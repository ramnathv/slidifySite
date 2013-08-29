---
title: Slidify
framework: bootstrap3
mode: selfcontained
hitheme: solarized_light
--- &jumbotron .col-md-6

<style>
.jumbotron pre {
  border: 1px;
  background-color: transparent;
  font-size: 18px;
  margin-left: -20px;
}
</style>

<iframe width="500" height="340" src="http://www.youtube.com/embed/I95GOmLc7TA" frameborder="0" allowfullscreen></iframe>

*** .col-md-6

# Slidify

Interactive Documents from Markdown

<a class='btn btn-success btn-lg' href="#">Learn More</a>

```r
devtools::source_gist("c5bc8ea8e250a6bd039d")
library(slidify)
author("newdeck")
slidify("index.Rmd")
publish(repo = "newdeck", user = "ramnathv")
```

--- &brow #features

*** .col-md-4

## <i class="icon-pencil"> </i>Create

Write content in `R Markdown`, mixing `markdown` text with `knitr` code chunks, and render it as an interactive web-ready HTML5 document.

<a class='btn btn-primary' href="#">View Details</a>

*** .col-md-4

## <i class="icon-hand-right"> </i>Customize

Style your document using `frameworks`. Structure display using `layouts`. Extend functionality using `widgets`

<a class='btn btn-primary' href="#">View Details</a>

*** .col-md-4

## <i class="icon-gift"> </i>Share

Publish your interactive document to `RPubs` with a single click, or to `github` and `dropbox` with a few lines of code.

<a class='btn btn-primary' href="#">View Details</a>


