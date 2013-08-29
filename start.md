---
title: Tutorials
framework: bootstrap3
mode: selfcontained
highlighter: prettify
hitheme: twitter-bootstrap
prettify:
  linenums: false
--- &brow #features

*** .col-md-3

## Interactive Docs

<a class='btn btn-primary' href="#">
 <i class='icon-download icon-large'> </i> Download
</a>

*** .col-md-7

## Getting Started

<style>
body {
  margin-top: 40px;
}
ol.linenums {
  margin-left: 0px;
}
#features p {
  font-size: 14px;
  line-height: 21px;
  color: #777777;
}
#features h3 {
  font-family: "Open Sans Condensed";
  color: #555555;
}
</style>


<div class='alert alert-success'>
 You can install Slidify, write a three page slide deck and publish it to Github,  all in less than 5 minutes!
</div>


### Install Slidify

Slidify is not on CRAN as yet and needs to be installed from `github`. You can use Hadley's `devtools` package to accomplish this easily. You will also need `slidifyLibraries` which contains all external libraries required by Slidify.

```
library(devtools)
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')
```

### Author

This step will create a new directory `mydeck` and add the necessary scaffolding. If you have `git` installed, it will initialize it as a `git` repo, checkout its `gh-pages` branch, add and commit everything. Finally, it will open `index.Rmd` for you to edit.

```
author("mydeck")
```

### Edit

Edit the YAML front matter (if you don't know what it is, just replace everything to the right of the `:` in the lines between the `---` right at the top). Edit the deck, making sure to separate your slides by a blank line followed by three dashes `---`. 

### Generate

This step generates a html slide deck from `index.Rmd`. It is a static file, which means that you can open it in your browser locally and it should display fine.

```
slidify("index.Rmd")
```

### Publish

Now is the magical step of publishing your deck to `github`. Login with your github account and [create a new repository](https://help.github.com/articles/creating-a-new-repository). Note that Github will prompt you to add a README file, but just use the defaults so that your repo is empty. You will need to have `git` installed on your computer and be able to push to `github` using [SSH](https://help.github.com/articles/generating-ssh-keys)

```
# replace USER and REPO with your username and reponame
publish(user = "USER", repo = "REPO", host = 'github')
```

