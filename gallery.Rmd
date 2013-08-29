---
title: Gallery
framework: bootstrap3
mode: selfcontained
highlighter: prettify
hitheme: twitter-bootstrap
prettify:
  linenums: false
assets:
  jshead: ["http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js", "http://jmblog.github.io/color-themes-for-google-code-prettify/js/jquery.isotope.min.js"]
--- &brow

*** .col-md-12

<ul id="filter" class="filter list-inline">
  <li class="active"><a href='#' data-filter="*">
    <span class='badge'>All Themes</span>
  </a></li>
  <li><a href="#" data-filter=".dark">
    <span class='badge'>Dark</span>
  </a></li>
  <li><a href="#" data-filter=".light">
    <span class='badge'>Light</span>
  </a></li>
</ul>

<script>
// cache container
var $container = $('#gallery > .row');
// initialize isotope
$container.isotope({
 
});

// filter items when filter link is clicked
$('#filters a').click(function(){
  var selector = $(this).attr('data-filter');
  $container.isotope({ filter: selector });
  return false;
});
</script>

--- &brow #gallery

*** .col-md-3

<div class="thumbnail light">
  <img src="http://www.clipular.com/c?14750014=BYKY6f65GF_csyUGqL8Hpg26MgY&f=.png" alt="...">
  <div class="caption">
    <h4>Google IO2012</h4>
    <a href="http://ramnathv.github.com/slidifyExamples/examples/io2012">Deck</a> | <a href="https://github.com/ramnathv/slidifyExamples/tree/gh-pages/examples/io2012">Code</a>
  </div>
</div>

*** .col-md-3

<div class="thumbnail light">
  <img src="http://www.clipular.com/c?14749008=6EVVc2ylLd6_sQhnw9dO02-kiaw&f=.png" alt="...">
  <div class="caption">
    <h4>Shower</h4>
    <a href="http://ramnathv.github.com/slidifyExamples/examples/io2012">Deck</a> | <a href="https://github.com/ramnathv/slidifyExamples/tree/gh-pages/examples/io2012">Code</a>
  </div>
</div>

*** .col-md-3

<div class="thumbnail dark">
  <img src="http://www.clipular.com/c?14601148=5B1MwcA3iPlbeDynKHvXFciYXOE&f=.png" alt="...">
  <div class="caption">
    <h4>RevealJS</h4>
    <a href="http://ramnathv.github.com/slidifyExamples/examples/io2012">Deck</a> | <a href="https://github.com/ramnathv/slidifyExamples/tree/gh-pages/examples/io2012">Code</a>
  </div>
</div>

*** .col-md-3

<div class="thumbnail dark">
  <img src="http://www.clipular.com/c?14818016=ye1ZwKDOg1wixcpp7i4OJIUsfjc&f=.png" alt="...">
  <div class="caption">
    <h4>Minimal</h4>
    <a href="http://ramnathv.github.com/slidifyExamples/examples/io2012">Deck</a> | <a href="https://github.com/ramnathv/slidifyExamples/tree/gh-pages/examples/io2012">Code</a>
  </div>
</div>

--- &brow

*** .col-md-3

<div class="thumbnail dark">
  <img src="http://www.clipular.com/c?14686018=EyBC6Tnw2M5l5-gRannj1htug0Q&f=.png" alt="...">
  <div class="caption">
    <h4>Poirot</h4>
    <a href="http://ramnathv.github.com/slidifyExamples/examples/io2012">Deck</a> | <a href="https://github.com/ramnathv/slidifyExamples/tree/gh-pages/examples/io2012">Code</a>
  </div>
</div>




<style>
body {
  margin-top: 40px;
}
#gallery .col-md-3 {
  padding-right:20px; 
  border-right: 1px dotted #ccc;
}
.thumbnail {
  border: none;
}
</style>
