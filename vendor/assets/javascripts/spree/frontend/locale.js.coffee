$ ->
  $('#locale-select select').change ->
    $.ajax(
      type: 'POST'
      url: '/locale/set'
      data:
        locale: $(this).val()
        authenticity_token: $('#locale-select input[name="authenticity_token"]').val()
    ).done ->
      window.location.reload()