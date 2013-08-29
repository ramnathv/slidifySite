---
title: Slides
framework: bootstrap3
mode: selfcontained
highlighter: prettify
hitheme: twitter-bootstrap
prettify:
  linenums: false
--- &brow #features

*** .col-md-3

## Sidebar

*** .col-md-7

## Slides

Slides are authored in markdown and delimited by an empty newline followed by three dashes. Shown below is an example of a typical slide

    ---
  	## Slide Title
  	
  	This is a typical slide. You can use __markdown__ to write content.
  	
  	Some points to make
  	
  	- Point 1
  	- Point 2
  	- Point 3
		
		
#### Slide Properties	

Many a time, you want to style some slides differently. One way to achieve this is using slide properties, which can be added inline after the slide delimiter. For example, if you want to add an id to a slide and also slide classes, which you can then style using `css`, here is how you can do it.


  	--- {id: myslide, class: [bigger, red]}
  	## Slide Title
  	
  	This is a typical slide. You can use __markdown__ to write content.
  	
  	Some points to make
  	
  	- Point 1
  	- Point 2
  	- Point 3	
		
The slide properties need to be valid YAML, and you can check if it is the case by running the following in your R console

  	props <- "{id: myslide, class: [bigger, red]}"
  	yaml::yaml.load(props)
		
Slidify also allows an alternate format for specifying slide properties, that uses space separated key-value pairs with symbolic shortcuts. So, the above set of properties can also be written as

  	--- #myslide .bigger .red
		
The symbolic shortcuts currently available include

  	# id
  	. class
  	& template
  	= name
	
NOTE: Do not mix the two formats of specifying properties, as it won't work. For example, the following slide properties will throw an error

  	--- {#myslide, class: [bigger, red]}
		
We can then add `css` externally or inline that would style this slide as required

  	slide.bigger {
  	  font-size: 1.5em;
  	}
  	
  	slide.red {
  	  color: red;
  	}
		
#### Customizing Fonts

It is easy to use custom fonts with Slidify. For example, suppose you wish to use the `Droid Sans` webfont from Google. You can accomplish your task in two steps.

First, you need to include a link to the font in the YAML front matter at the top of your Rmd document.

  	---
  	assets:
  	  css: http://fonts.googleapis.com/css?family=Droid+Sans
  	---
  	
Second, you need to add CSS that would apply this font to the text. You can either include the CSS inline, or add it to an external css file, and link it in the YAML front matter.

  	p {
  	  font-family: "Droid Sans" !important
  	}

Note that we are adding the `!important` tag to the CSS declaration so that it overrules all other rules that have been defined for `p` tags. If you are working with a specific Slidify framework, you can also achieve this by writing targetted CSS directives. For example, if you are using the default framework `io2012`, you can target the text elements on the slide as

  	slide > article p, ul, ol {
  	  font-family: "Droid Sans"
  	}
  		
This CSS rule targets `p/ul/ol` text elements nested inside an `article` tag which in turn is a direct descendant of a `slide` tag. Knowing the hierarcy helps you write efficient CSS.

Note that using webfonts ensures that they are available wherever the document is displayed online. However, to ensure offline availability as well, you need to download the fonts and use an `@font-face` kit to use them. 

<!-- Add Links on Font Face Kits --> 

