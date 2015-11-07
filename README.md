# Opal Coast
An easily-extensible stylus framework for getting projects off on the right foot, with fundamental typography and responsive grid layout rules out of the box.

* **core**
  *Home to all the variables that make the SCSS work, though no CSS created directly here.*

  * _animation.styl
    *Easing curves for more engaging CSS3 animations. Imported into config.*

  * _config.styl
    *The engine: <a href="{% url '/colour/' %}" title="Colour">core colours</a> and universal variables*

  * _mixins.styl
    *mixins for media queries and more. Imported into config.*

  * _reset.styl
    *Remove browser defaults and set new global styles*

  * _theme-colours.styl
    *The <a href="{% url '/colour/' %}" title="Colour">extended Halsbury palette</a>. Imported into config.*

  * _type.styl
    *Core values for <a href="{% url '/typography/' %}" title="Typography">app typography</a>. Imported into config.*

* **layout**
  *Basic layout rules for the main elements of each page &mdash; usually those appearing in the master page*

  * _footer.styl
    *The last block element of the page, usually containing credits or a reduced nav*

  * _header.styl
    *The first block element of the page, containing the logo and main nav*

  * _main-body.styl
    *Everything between the header and footer &mdash; the meat &amp; potatoes of the page*

  * _nav.styl
    *The top-level navigation throughout the app, expressing its information architecture*

* **modules**
  *Elements that can visually and/or structurally be used throughout the app*

  * **core**
    *Every app will use these modules, so they&#39;ve earned their own folder*

    * _basic-body.styl
      *The core elements of HTML that often begin a stylesheet &mdash; html, body, a etc.*

    * _buttons.styl
      *Related to forms, defining the styles and variations of call-to-action links &amp; form submit elements*

    * _col.styl
      *Defintions for a <a href="{% url '/layout/' %}" title="Grid Layout">responsive relative grid system</a> that defines in-page layout for Halsbury apps*

    * _forms.styl
      *input, select, textarea &amp; related input styles*

    * _typog.styl
      *Definitions for the <a href="{% url '/typography/' %}" title="Typography">standard typographic elements</a> (h1&ndash;5, p)*

  * _module.styl
    *Your module here&hellip;*

* **pages**
  *Collections of or variations on modules specific to pages of the app, or totally unique code*

  * _page.styl
    *Your page here&hellip;*

* **vendors**

  * _fancybox.styl

  * _slick.styl

* opal-coast.styl
  *Where it all comes together. Rename as appropriate to project &amp; reference .css version.*
