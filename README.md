# Opal Coast
An easily-extensible stylus framework for getting projects off on the right foot, with fundamental typography and responsive grid layout rules out of the box.

            <ul class="opal-list">
                <li>
                    <strong class="folder"><code>core</code></strong>
                    <span class="file-comment">Home to all the variables that make the SCSS work, though no CSS created directly here.</span>
                    <ul>
                        <li>
                            <code>_<span class="file">animation</span>.scss</code>
                            <span class="file-comment">Easing curves for more engaging CSS3 animations. Imported into <code>config</code>.</span>
                        </li>
                        <li>
                            <code>_<span class="file">config</span>.scss</code>
                            <span class="file-comment">The engine: <a href="{% url '/colour/' %}" title="Colour">core colours</a> and universal variables</span>
                        </li>
                        <li>
                            <code>_<span class="file">mixins</span>.scss</code>
                            <span class="file-comment">Useful <a href="http://sass-lang.com/documentation/file.SASS_REFERENCE.html#mixins" target="</span>.scssblank" title="SASS Mixin Directives">mixins</a> for vendor-prefixing CSS and more. Imported into <code>config</code>.</span>
                        </li>
                        <li>
                            <code>_<span class="file">reset</span>.scss</code>
                            <span class="file-comment">Remove browser defaults and set new global styles</span>
                        </li>
                        <li>
                            <code>_<span class="file">theme-colours</span>.scss</code>
                    <span class="file-comment">The <a href="{% url '/colour/' %}" title="Colour">extended Halsbury palette</a>. Imported into <code>config</code>.</span>
                        </li>
                        <li>
                            <code>_<span class="file">type</span>.scss</code>
                    <span class="file-comment">Core values for <a href="{% url '/typography/' %}" title="Typography">app typography</a>. Imported into <code>config</code>.</span>
                        </li>
                    </ul>
                </li>
                <li>
                    <strong class="folder"><code>layout</code></strong>
                    <span class="file-comment">Basic layout rules for the main elements of each page &mdash; usually those appearing in the master page</span>
                    <ul>
                        <li>
                            <code>_<span class="file">footer</span>.scss</code>
                            <span class="file-comment">The last block element of the page, usually containing credits or a reduced nav</span>
                        </li>
                        <li>
                            <code>_<span class="file">header</span>.scss</code>
                            <span class="file-comment">The first block element of the page, containing the logo and main nav</span>
                        </li>
                        <li>
                            <code>_<span class="file">main-body</span>.scss</code>
                            <span class="file-comment">Everything between the header and footer &mdash; the meat &amp; potatoes of the page</span>
                        </li>
                        <li>
                            <code>_<span class="file">nav</span>.scss</code>
                            <span class="file-comment">The top-level navigation throughout the app, expressing its information architecture</span>
                        </li>
                    </ul>
                </li>
                <li>
                    <strong class="folder"><code>modules</code></strong>
                    <span class="file-comment">Elements that can visually and/or structurally be used throughout the app</span>
                    <ul>
                        <li>
                            <strong class="folder"><code>core</code></strong>
                            <span class="file-comment">Every app will use these modules, so they&#39;ve earned their own folder</span>
                            <ul>
                                <li>
                                    <code>_<span class="file">basic-body</span>.scss</code>
                                    <span class="file-comment">The core elements of HTML that often begin a stylesheet &mdash; <code>html, body, a</code> etc.</span>
                                </li>
                                <li>
                                    <code>_<span class="file">buttons</span>.scss</code>
                                    <span class="file-comment">Related to <code>forms</code>, defining the styles and variations of call-to-action links &amp; form submit elements</span>
                                </li>
                                <li>
                                    <code>_<span class="file">col</span>.scss</code>
                            <span class="file-comment">Defintions for a <a href="{% url '/layout/' %}" title="Grid Layout">responsive relative grid system</a> that defines in-page layout for Halsbury apps</span>
                                </li>
                                <li>
                                    <code>_<span class="file">forms</span>.scss</code>
                                    <span class="file-comment"><code>input, select, textarea</code> &amp; related input styles</span>
                                </li>
                                <li>
                                    <code>_<span class="file">typog</span>.scss</code>
                            <span class="file-comment">Definitions for the <a href="{% url '/typography/' %}" title="Typography">standard typographic elements</a> (<code>h1&ndash;5, p</code>)</span>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <code>_<span class="file">module</span>.scss</code>
                            <span class="file-comment"><em>Your module here&hellip;</em></span>
                        </li>
                    </ul>
                </li>
                <li>
                    <strong class="folder"><code>pages</code></strong>
                    <span class="file-comment">Collections of or variations on <code>modules</code> specific to pages of the app, or totally unique code</span>
                    <ul>
                        <li>
                            <code>_<span class="file">page</span>.scss</code>
                            <span class="file-comment"><em>Your page here&hellip;</em></span>
                        </li>
                    </ul>
                </li>
                <li>
                    <strong class="folder"><code>vendors</code></strong>
                    <span class="file-comment"></span>
                    <ul>
                        <li>
                            <code>_<span class="file">fancybox</span>.scss</code>
                            <span></span>
                        </li>
                        <li>
                            <code>_<span class="file">slick</span>.scss</code>
                            <span></span>
                        </li>
                    </ul>
                </li>
                <li>
                    <code><span class="file">opal1506</span>.css</code>
                    <span class="file-comment">Where it all comes together. Rename as appropriate to project &amp; reference <code>.css</code> version.</span>
                </li>
            </ul>
