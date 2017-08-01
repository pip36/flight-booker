$(document).ready(function(){

  var updateFormErrors = function(){

    if(($('#from-airport').val() == $('#to-airport').val()) &&
      $('#from-airport').val() != ""){
        $('#to-airport').addClass("invalid");
        $('#to-airport').after("<div class='alert alert-danger'> Please choose a different destination </div>");
        $('.search-button').prop("disabled", true);
    }
    else if ($('#from-airport').val() == "" || $('#to-airport').val() == "") {
      $('.search-button').prop("disabled", true);
    }
    else{
      $('#to-airport').removeClass("invalid");
      $('#to-airport').next().remove();
      $('.search-button').prop("disabled", false);
    }
  }

  updateFormErrors();
  $('#to-airport').change(updateFormErrors);
  $('#from-airport').change(updateFormErrors);

  $('.book-button').prop("disabled", true);

  $('.flight-block').click(function(){
    $('.book-button').prop("disabled", false);
    $('.flight-block').removeClass('selected-flight');
    $(this).find('input').prop("checked", true);
    $(this).addClass('selected-flight');
  });

});
