// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
$(document).ready(function(e){
    var intRegex = /^\d+$/;

    $('body').on("focusin",".required",function(e){

        $(this).next().hide()
    })
    $("body").on("focusout",".required",function(e){
         if($.trim($(this).val())==""){
                       $(this).next().show()
         }
        var str=$("#property_street_address").val()+", "+  $("#property_city").val()+", property for sale"
         $("#property_meta_description").val(str)
//        alert($("#property_property_bedroom_attributes_bedroom_id option:selected").text())
        str="Real State for sale in "+ $("#property_city").val() +", "+$("#property_property_bedroom_attributes_bedroom_id option:selected").text()+" Bedrooms/"
        str+=$("#property_property_bathroom_attributes_bathroom_id option:selected").text()+" baths for sale in" +$("#property_city").val()
        $("#property_meta_keyword").val(str)
//              Real estate for sale in edmond Oklahoma, 2 bedrooms/1.5 baths for sale in edmond Oklahoma, Property for sale4
//            in edmond Oklahoma, 4445 sq. ft./2 bedroom/1.5 bath house for sale in edmond Oklahoma for 22333
    })

    $("body").on("click","#create_property",function(e){

        check_empty(e)
        check_integer(e)
//        e.preventDefault(e)
    })
    function check_empty(e){

        $(".required").each(function () {
             if($.trim($(this).val())==""){
                       $(this).next().show()
                 e.preventDefault()
         }
        }) ;
//      $(".required").each
    }
   function check_integer(e){

        $(".number").each(function () {
             if($.trim($(this).val())=="" || !intRegex.test($(this).val())){
                 $(this).val("")
                       $(this).next().show()
                 e.preventDefault()
         }
        }) ;
//      $(".required").each
    }
//             $("#hhh").live("click",function(e){
//                  $(".required").addClass("empty")
//             alert("jj")
//             })

})  ;


