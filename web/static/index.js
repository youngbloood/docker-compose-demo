$(document).ready(function(){
    $("#b01").click(function(){
    htmlobj=$.ajax({url:"/api/hello",async:false});
    $("#myDiv").html(htmlobj.responseText);
    });
  });