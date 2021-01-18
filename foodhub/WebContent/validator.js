$(document).ready(function($) {
    // constants
    var SHOW_CLASS = 'show',
        HIDE_CLASS = 'hide',
        ACTIVE_CLASS = 'active';
    $('.tabs').on('click', 'li a', function(e) {
        e.preventDefault();
        var $tab = $(this),
            href = $tab.attr('href');
        $('.active').removeClass(ACTIVE_CLASS);
        $tab.addClass(ACTIVE_CLASS);
        $('.show').removeClass(SHOW_CLASS).addClass(HIDE_CLASS).hide();
        $(href).removeClass(HIDE_CLASS).addClass(SHOW_CLASS).hide().fadeIn(620);
    });
})(jQuery);

$(document).ready(function(){
$("#registration").validate();
});

//initialize the validator function
/*validator.message['date'] = 'not a real date';
// validate a field on "blur" event, a 'select' on 'change' event &amp; a '.required' classed multifield on 'keyup':
$('form').on('blur', 'input[required], input.optional, select.required', validator.checkField).on('change', 'select.required', validator.checkField).on('keypress', 'input[required][pattern]', validator.keypress);
$('.multi.required').on('keyup blur', 'input', function() {
    validator.checkField.apply($(this).siblings().last()[0]);
});
// bind the validation to the form submit event
//$('#send').click('submit');//.prop('disabled', true);
$('form').submit(function(e) {
    e.preventDefault();
    var submit = true;
    // evaluate the form using generic validaing
    if (!validator.checkAll($(this))) {
        submit = false;
    }
    if (submit) this.submit();
    return false;
});
*/
/*$(document).ready(function() {
 // Initialize form validation on the registration form.
 // It has the name attribute "registration"
 $("form[name='register']").validate({
   // Specify validation rules
   rules: {
     // The key name on the left side is the name attribute
     // of an input field. Validation rules are defined
     // on the right side
     name: "required",
     phonenumber: "required",
     source: "required",
     destination: "required",
     email: {
       required: true,
       // Specify that email should be validated
       // by the built-in "email" rule
       email: true
     },
     password: {
       required: true,
       minlength: 6
     }
   },
   // Specify validation error messages
   messages: {
     name: "Please enter your name",
     phonenumber: "Please enter the phone number",
     source: "Please enter your source",
     destination: "Please enter the destination",
     
     password: {
       required: "Please provide a password",
       minlength: "Your password must be at least 6 characters long"
     },
     email: "Please enter a valid email address"
   },
   // Make sure the form is submitted to the destination defined
   // in the "action" attribute of the form when valid
   submitHandler: function(form) {
     form.submit();
   }
 });
})(jQuery);
*/

