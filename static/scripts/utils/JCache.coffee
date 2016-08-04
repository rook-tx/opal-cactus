JCache = (()->

  $array = []

  cache = (selector, clear)->
    if !$array[selector]? || (clear)
      $array[selector] = $(selector)

    return $array[selector]

  clear = ()->
    $array = []

  return {
    cache: cache,
    clear: clear
  }

)()

window.$c = JCache.cache
