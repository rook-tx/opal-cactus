Validator = (()->

  validateForm = ($form) ->
    pass = true
    $('.show-error').removeClass('show-error')

    $('.form-validate', $form).each ->
      $currentInput = $(this)
      val = $currentInput.val()

      switch($currentInput.attr('data-validation-type'))
        when 'name' 
          if($currentInput.prop('required'))
            if (val.length < 3)
              pass = false
              showError($currentInput)
          else if(val.length)
            if (val.length < 3)
              pass = false
              showError($currentInput)
        when 'phone' 
          if($currentInput.prop('required'))
            if(val.length>1)
              if(!phoneValidate(val))
                pass = false
                showError($currentInput)
            else
              pass = false
              showError($currentInput)
          else
            if(val.length>1)
              if(!phoneValidate(val))
                pass = false
                showError($currentInput)
        when 'email'
          if($currentInput.prop('required'))
            if(!emailValidate(val))
              showError($currentInput)
          else if(val.length)
            if(!emailValidate(val))
              showError($currentInput)
        when 'postCode'
          if($currentInput.prop('required'))
            if(!postCodeValidate(val))
              showError($currentInput)
          else if(val.length)
            if(!postCodeValidate(val))
              showError($currentInput)
    
    if(pass)
      $form.submit()
      
  phoneValidate = (value) ->
    patt = new RegExp(/(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]‌​)\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]‌​|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})\s*(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+)\s*)?$/)
    return patt.test(value)

  emailValidate = (value) ->
    patt = new RegExp(/^\S+@\S+\.\S+$/)
    return patt.test(value)

  postCodeValidate = (value) ->
    patt = new RegExp(/^([a-zA-Z]\d[a-zA-z]( )?\d[a-zA-Z]\d)$/)
    return patt.test(value)
  
  showError = ($element) ->
    $element.parent().addClass('show-error')

  return {
    validateForm: validateForm
  }

)()