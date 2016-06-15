jQuery ->
  alltypesofexercises = $('#appointment_exercises_attributes_0_typesofexercise_id').html()
  typesofexercises = $('#appointment_exercises_attributes_0_typesofexercise_id').html()

  $('.bodyarea_select').change ->
    $(this).closest('div').next('div').children('select').children().html(alltypesofexercises)

    id = $(this).attr('id')
    
    number = id.match(/\d/g)
    
    bodyarea = $('#'+ id + ' :selected').text()

    if bodyarea
      options = $(typesofexercises).filter('optgroup[label='+bodyarea+']').html()
      if options
        $('#appointment_exercises_attributes_'+number+'_typesofexercise_id').html(options)
      else
        $('#appointment_exercises_attributes_'+number+'_typesofexercise_id').html('<optgroup label=""><option></option></optgroup>')

    else
      $('#appointment_exercises_attributes_'+number+'_typesofexercise_id').html('<option></option>')


  $('form').on 'click', '.add_fields', (event) -> 
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

