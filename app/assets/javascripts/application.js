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

    $(".required").live("focusin",function(e){

        $(this).next().hide()
    })
    $(".required").live("focusout",function(e){
         if($.trim($(this).val())==""){
                       $(this).next().show()
         }


    })
    $("#create_property").live("click",function(e){

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


