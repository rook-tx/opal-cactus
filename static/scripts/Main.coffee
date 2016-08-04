Main = (()->

  init = ()->

    ## Event listeners ##

    $(()->
      $c(document).trigger('Main.ready')
    )

    $c(document).on 'Main.ready', ()->
      $c(document).trigger('Main.update')

    $c(document).on 'Main.update', ()->
      # iso = new Isotope('.grid', {})

    $c(document).on 'click', '[data-nohref="true"]', (e)->
      e.preventDefault()

    $ ->
      $('a[href*=#]:not([href=#])').click ->
        if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
          target = $(@hash)
          target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
          if target.length
            $('html,body').animate { scrollTop: target.offset().top }, 600
            return false
        return
      return

    cb = ->
      l = document.createElement('link')
      l.rel = 'stylesheet'
      l.href = '//fonts.googleapis.com/css?family=Lato:300,400,700,400italic|Merriweather:300,400,700'
      h = document.getElementsByTagName('head')[0]
      h.parentNode.insertBefore l, h
      return

    raf = requestAnimationFrame or mozRequestAnimationFrame or webkitRequestAnimationFrame or msRequestAnimationFrame
    if raf
      raf cb
    else
      window.addEventListener 'load', cb

  return {
    init: init
  }

)()
