$(document).ready(function(){
    // button 01 click function
    $("#b01").click(function(){
    htmlobj=$.ajax({url:"/api/hello",async:false});
    $("#myDiv").html(`<div id="myDiv"><h2>${htmlobj.responseText}</h2></div>`);
    $('#b01').hide();
    $("#b02").show();
    });
    // buttion 02 click function
    $("#b02").click(function(){
      htmlobj=$.ajax({url:"/api/hello",async:false});
      $("#myDiv").html('<div id="myDiv"><h2>初级赛亚人进化...</h2></div>');
      $('#b02').hide();
      $("#b01").show();
      });
  });