---
title: Widgets
framework: bootstrap3
mode: selfcontained
highlighter: prettify
hitheme: twitter-bootstrap
prettify:
  linenums: false
--- &jumbotron

*** .col-md-8

# Widgets

.lead A `widget` is a collection of `stylesheets`, `javascripts` and `layouts` that add additional functionality to an HTML5 document.

<!--

<style>
pre {
  padding: 0px;
  border: none;
}
</style>

-->


--- &brow #features

*** .col-md-3

## Sidebar

*** .col-md-7

Let us take the example of `mathjax`, a widget that comes pre-bundled with `slidify`, that allows mathematical equations written in `latex` to be rendered beautifully. The `mathjax` widget has the following folder structure

![mathjax](http://i.imgur.com/y4Yep.png?1)

`mathjax.html` is a mustache layout that specifies how this widget would be inserted into a slide deck. Note that it serves `mathjax` from a CDN when you are connected to the internet, and if not, it switches to a stripped down local version. The mustache variable `page.url.widgets`, specifies the path to the location of the widgets folder in the root directory, so that it is served correctly.

```html
<!-- MathJax: Fall back to local if CDN offline but local image fonts are not supported (saves >100MB) -->
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    tex2jax: {
      inlineMath: [['$','$'], ['\\(','\\)']],
      processEscapes: true
    }
  });
</script>
<script src="https://c328740.ssl.cf1.rackcdn.com/mathjax/2.0-latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
<script>
  window.MathJax || document.write('<script type="text/x-mathjax-config">MathJax.Hub.Config({"HTML-CSS":{imageFont:null}});<\/script><script src="{{page.url.widgets}}/mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML"><\/script>')
</script>
```

#### Structure

A widget needs to follow some conventions with regard to its folder structure.

1. By default, Slidify looks for assets in two folders named `css` and `js`. All css files are included in the head of the document, while all javascripts are loaded after the body tag.

2. If you have different names for your asset folders, or want more control over what assets are included, and where in the document, you can include a `config.yml` file. 

Let us take the example of the widget `scianimator`. The default behavior was not desired in this case, for two reasons:

   - The css folder consists of multiple stylesheets, of which only the base stylesheet and one of the themes needs to be included. 

   - The js folder consists of multiple javascripts, of which only one needs to be included. Moreover, for the animations to be displayed correctly, the script should be included in the head of the document. 

The `config.yml` file below provides the desired control, by clearly specifying which assets to include. The `jshead` key specifies javascript assets that need to be included in the head of the document. Note that all asset paths are specified relative to the widget folder.

```
scianimator:
  jshead: js/jquery.scianimator.pack.js
  css: [css/scianimator.css, css/scianimator.light.css]
```

## More

A widget can also contain an html file of the same name, which gets included inline after the body tag. For example, the disqus widget contains the following html. The widget can be positioned on a page using `<div id="disqus_thread"></div>`

```html
<script>
{{^ env.production }}var disqus_developer = 1;{{/ env.production }}
  var disqus_shortname = '{{ page.disqus.short_name }}';
  /* * * DON'T EDIT BELOW THIS LINE * * */
  (function() {
     var dsq = document.createElement('script'); 
     dsq.type = 'text/javascript'; dsq.async = true;
     dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
     (document.getElementsByTagName('head')[0] || document.getElementsByTagName  ('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">
 comments powered by Disqus.</a>
</noscript>
<a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
```
