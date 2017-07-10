$(document).ready(function(){

  var updateFormErrors = function(){
    if($('#from-airport').val() == $('#to-airport').val()){
        $('#to-airport').addClass("invalid");
        $('#to-airport').after("<div class='alert alert-danger'> Please choose a different destination </div>");
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

});
