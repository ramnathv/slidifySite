---
title: Share
framework: bootstrap3
mode: selfcontained
highlighter: prettify
hitheme: twitter-bootstrap
prettify:
  linenums: false
--- &jumbotron

*** .col-md-8

# Share

.lead Slidify makes it easy to publish your slide decks online to `github`, `RPubs` and `Dropbox` with a single click, or a single line of code.

--- &brow #features .RAW

*** .col-md-3

## Sidebar

*** .col-md-7

### Github Pages

Publishing to Github is as easy as running `publish` from inside the slide directory. 

```
publish(user = "USER", repo = "REPO")
```

<div class='alert alert-success'>
  In order to publish to <code>github</code> you need to have <code>git</code> installed on your system. You also need a <code>github</code> account have <code>ssh</code> access set up. Finally, you need to create an empty repository on github to house the presentation.
</div>

### Dropbox

You can publish your slide deck using the `Public` folders feature of `Dropbox`. Run the following from inside your slide directory, where `dirname` is the name of the directory you want to create in your `~/Dropbox/Public` folder to host your presentation.

```
publish(dirname, host = "dropbox")
```

Copy the public link to `index.html` and share your presentation with the rest of the world! Note that you may need to remove the `http://` part of the URL for externally hosted stylesheets and javascripts to work correctly. Your public link should look like what is shown below.


    dl.dropbox.com/u/{{user.id}}/{{dirname}}/


### Rpubs

If you are using RStudio, you can publish to RPubs directly using the publish button that appears when you preview your document. You can also publish your deck from the command line by running

```
publish(title = 'mytitle', 'index.html', host = 'rpubs')
```

<div class='alert alert-danger'>
While publishing to RPubs, it is important that you set the <code>mode</code> in the YAML front matter to <code>standalone</code>. This will ensure that all assets are served from a CDN, and the html file is standalone.
</div>
