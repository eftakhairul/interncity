function init () {
//    $("#select-university").chosen();
//    $("#select-major").chosen();
//    $("#select-grad-year").chosen();

    $("#rightPeopleCarousel").carousel({
        interval: 10000
    });
    $("#featJobCarousel").carousel();
}

function changeTopbarColor () {

    $(window).scroll(function(){
        var y = $(window).scrollTop();
        if( y > 0 ){

            $('#interncity-logo').attr('src', '/assets/logo_bwg.png');

            $('.navbar').css({
                'background-color': 'black',
                'opacity': '0.85'
            });

            $('.navbar .nav>li>a').css({
                'color': 'white'
            });

        } else {

            $('#interncity-logo').attr('src', '/assets/logo_bw.png');

            $('.navbar').css({
                'background-color': '#b6e913',
                'opacity': '1'
            });

            $('.navbar .nav>li>a').css({
                'color': 'black'
            });

        }
    });

}

function setButtonActions () {

    $(".goto-interns-step-1").click(function () { show("interns", 1); });
    $(".goto-interns-step-2").click(function () { show("interns", 2); });
    // $(".goto-interns-step-3").click(function () { show("interns", 3); });


    $(".goto-company-step-1").click(function () { show("company", 1); });
    $(".goto-company-step-2").click(function () { show("company", 2); });
    // $(".goto-company-step-3").click(function () { show("company", 3); });


}


function show (stepName, stepNo) {
    var elem;

    for (var i = 1; i < 4; ++i) {
        elem = $("#"+stepName+"-step-"+i);

        if (i === stepNo) {
            elem.removeClass("hide-step");
            elem.addClass("show-step");
        } else {
            elem.removeClass("show-step");
            elem.addClass("hide-step");
        }
    }
}


init();
changeTopbarColor();
setButtonActions();
$(".chzn-select").chosen({width: "200px"});

$("#select-university").attr('data-placeholder', 'Select a University');
$("#select-university").chosen();

$("#select-major").attr('data-placeholder', 'Select a Major');
$("#select-major").chosen();

$("#intern_graduation_year").attr('data-placeholder', 'Select Graduation Year');
$("#intern_graduation_year").chosen();

$("#company_industry_id").attr('data-placeholder', 'Select Industry Type');
$("#company_industry_id").chosen();





//Intern form validation
$(".goto-interns-step-3").click(function () {

    //Setting Up rules for validating intern form
    $("form#new_intern").validate({
        ignore: "",
        rules: {
            "intern[email]": {
                required: true,
                email   : true
            },
            "intern[name]": {required: true},
            "intern[university_id]": {
                required: {
                    depends: function(element) {
                        return $("#select-university").val() == '';
                    }
                }
            },
            "intern[major_id]":{
                required: {
                    depends: function(element) {
                        return $("#select-major").val() == '';
                    }
                }
            },
            "intern[graduation_year]":{
                required: {
                    depends: function(element) {
                        return $("#intern_graduation_year").val() == '';
                    }
                }
            },
            "intern[contact_number]":"required"
        },
        showErrors: function(errorMap, errorList) {
           /* Custom error-handling code here */
           console.log(errorMap + " - " + errorList);
           var element;
           
           for (var i = 0; i < errorList.length; ++i) {
                element = $(errorList[i].element);
                element.css('border-color', '#b94a48');

                switch(element.attr('name')) {
                    case 'intern[email]': 
                        element.attr('placeholder', 'Please enter a valid email address');
                        break;
                    case 'intern[name]': 
                        element.attr('placeholder', 'Please enter your name');
                        break;
                    case 'intern[university_id]':
                        element.attr('placeholder', 'Please select your univarsity');
                        break;
                    case 'intern[major_id]': 
                        element.attr('placeholder', 'Please select your major');
                        break;
                    case 'intern[graduation_year]': 
                        element.attr('placeholder', 'Please select your graduation year');
                        break;            
                    case 'intern[contact_number]': 
                        element.attr('placeholder', 'Please enter your contact number');
                        break;            
                    case 'intern[linkedin_address]': 
                        element.attr('placeholder', 'Please enter your LinkedIn address');
                        break;                
                    default:
                      element.attr('placeholder', errorList[i].message);
                }

           }
        }
    });

    if ($("form#new_intern").valid()) {
        show("interns", 3);
    }

    return false;
});

//Intern form submit
$('#intern-submit').click(function () {
    $('#intern-spinner').show();    
    $.ajax({
            type: 'POST',
            url: $('#new_intern').attr('action'),
            data: $('#new_intern').serialize(),
            error: function () {
                $('#intern-spinner').hide();    
            },
            success: function (data) {
                $('#intern-spinner').hide();    
                $('#interns-step-3').hide();
                $("#ajax_message_intern").show().html("Thank you for joining InternCITY! Your input is recorded successfully and you will get a confirmation email shortly.");
            },
            complete: function () {
            }
        });
});



//Company form validation
$(".goto-company-step-3").click(function () {

    //Setting Up rules for validating company form
    $("form#new_company").validate({
        ignore: "",
        rules: {
            "company[email]": {
                required: true,
                email   : true
            },
            "company[name]": {required: true},
            "company[industry_id]": {
                required: {
                    depends: function(element) {
                        return $("#company_industry_id").val() == '';
                    }
                }
            },
            "company[contact_person]":{required: true},
            "company[contact_number]":{required: true},
            "company[website]":{required: true}
        },
        showErrors: function(errorMap, errorList) {
           /* Custom error-handling code here */
           console.log(errorMap + " - " + errorList);
           var element;
           
           for (var i = 0; i < errorList.length; ++i) {
                element = $(errorList[i].element);
                element.css('border-color', '#b94a48');

                switch(element.attr('name')) {
                    case 'company[email]': 
                        element.attr('placeholder', 'Please enter a valid email address');
                        break;
                    case 'company[name]': 
                        element.attr('placeholder', 'Please enter your name');
                        break;
                    case 'company[contact_person]': 
                        element.attr('placeholder', 'Please enter contact person\'s name');
                        break;
                    case 'company[industry_id]': 
                        element.attr('placeholder', 'Please select your industry');
                        break;
                    case 'company[contact_number]': 
                        element.attr('placeholder', 'Please enter your contact number');
                        break;            
                    case 'company[website]':
                         element.attr('placeholder', 'Please enter your website address');
                        break;            
                    default:
                      element.attr('placeholder', errorList[i].message);
                }
           }
        }
    });

    if ($("form#new_company").valid()) {
        show("company", 3);
    }
    return false;
});

//Company form submit
$('#company-submit').click(function () {
    $('#company-spinner').show();
    $.ajax({
            type: 'POST',
            url: $('#new_company').attr('action'),
            data: $('#new_company').serialize(),
            error: function () {
                $('#company-spinner').hide();
            },
            success: function (data) {
                $('#company-spinner').hide();
                $('#company-step-3').hide();
                $("#ajax_message_company").html("Thank you for joining our Network! Your input is recorded successfully and you will get a confirmation email shortly.");
            },
            complete: function () {
            }
        });
});


//Mentor form validation and submit
$('#mentor-submit').click(function () {

    //Setting Up rules for validating mentor form
    $("form#new_mentor").validate({
        rules: {
            "mentor[name]": {
                required: true,
                email: true
            }
        },
        messages: {
            "mentor[name]": "Please enter a valid email address"
        }
        // showErrors: function(errorMap, errorList) {
           /* Custom error-handling code here */
           // console.log(errorMap + " - " + errorList);
           // $(errorList[0].element).attr('placeholder', 'Please enter a valid email address');

           // for (var i = 0; i < errorList.length; ++i) {
           //      $(errorList[0].element).attr('placeholder', 'Please enter a valid email address');
           // }
        // }
    });

    if($("form#new_mentor").valid()) {
        $('#mentor-spinner').show();
        $.ajax({
            type: 'POST',
            url: $('#new_mentor').attr('action'),
            data: $('#new_mentor').serialize(),
            error: function () {
                $('#mentor-spinner').hide();
            },
            success: function (data) {
                $('#mentor-spinner').hide();
                $("#ajax_message_mentor").html("Thank you for your interest to join our Mentorship Program. You will get a confirmation email and program details shortly.");
            },
            complete: function () {
            }
        });
    }

    return false;
});


