// const jquery=require('jquery')
const apps = ["twitter", "app1", "app2"];
$(document).ready(function () {
  $("#hide").click(function () {
    $("p").hide();
  });
  $("#show").click(function () {
    $("p").show();
    $(".block").css("background-color", "red");
  });

  $("#submit").click(function () {
    $(".block").css("background-color", "green");
    $("#div1").fadeIn("slow");
  });

  $("#gettext").click(function () {
    alert("text :" + $("#has").text());
  });

  document.getElementById("div2").innerHTML = apps;
});

document.getElementById("submit").addEventListener("mouseover", function () {
  alert(" hello santu");

  $("#comment").click(function () {
    $("#form").show();
  });
});

// Below code belongs to projects index.html.erb
