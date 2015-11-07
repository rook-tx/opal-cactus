# Opal Coast
An easily-extensible stylus framework for getting projects off on the right foot, with fundamental typography and responsive grid layout rules out of the box.

* **core**
  *Home to all the variables that make the SCSS work, though no CSS created directly here.*

  * _animation.scss
    *Easing curves for more engaging CSS3 animations. Imported into config.*
  * _config.scss
    *The engine: <a href="{% url '/colour/' %}" title="Colour">core colours</a> and universal variables*
  * _mixins.scss
    *mixins for media queries and more. Imported into config.*
  * _reset.scss
    *Remove browser defaults and set new global styles*
  * _theme-colours.scss
    *The <a href="{% url '/colour/' %}" title="Colour">extended Halsbury palette</a>. Imported into config.*
  * _type.scss
    *Core values for <a href="{% url '/typography/' %}" title="Typography">app typography</a>. Imported into config.*



*
    **layout**
    *Basic layout rules for the main elements of each page &mdash; usually those appearing in the master page*

        *
            _footer.scss
            *The last block element of the page, usually containing credits or a reduced nav*

        *
            _header.scss
            *The first block element of the page, containing the logo and main nav*

        *
            _main-body.scss
            *Everything between the header and footer &mdash; the meat &amp; potatoes of the page*

        *
            _nav.scss
            *The top-level navigation throughout the app, expressing its information architecture*



* **modules**
    *Elements that can visually and/or structurally be used throughout the app*

        *
            **core**
            *Every app will use these modules, so they&#39;ve earned their own folder*

                *
                    _basic-body.scss
                    *The core elements of HTML that often begin a stylesheet &mdash; html, body, a etc.*

                *
                    _buttons.scss
                    *Related to forms, defining the styles and variations of call-to-action links &amp; form submit elements*

                *
                    _col.scss
            *Defintions for a <a href="{% url '/layout/' %}" title="Grid Layout">responsive relative grid system</a> that defines in-page layout for Halsbury apps*

                *
                    _forms.scss
                    *input, select, textarea &amp; related input styles*

                *
                    _typog.scss
            *Definitions for the <a href="{% url '/typography/' %}" title="Typography">standard typographic elements</a> (h1&ndash;5, p)*



        *
            _module.scss
            *<em>Your module here&hellip;</em>*



*
    **pages**
    *Collections of or variations on modules specific to pages of the app, or totally unique code*

        *
            _page.scss
            *<em>Your page here&hellip;</em>*



*
    **vendors**
    **

        *
            _fancybox.scss
            <span>*

        *
            _slick.scss
            <span>*



*
    opal1506*.css
    *Where it all comes together. Rename as appropriate to project &amp; reference .css version.*
