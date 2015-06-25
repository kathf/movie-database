// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
// turbolinks deleted
//= require_tree .


////////// Event listeners //////////

$(document).ready(function() {
  $('#show_hide_genre').on("ajax:success", function(e, data, status, xhr) {
    if ($('#show_hide_genre').html() == "(show)") {
      $("#genre_output").html(xhr.responseText);
      $('#show_hide_genre').html("(hide)");
    } else {
      $("#genre_output").html("");
      $('#show_hide_genre').html("(show)");
    }
  });

  $('#show_hide_director').on("ajax:success", function(e, data, status, xhr) {
    console.log($('#show_hide_director').html());
    if ($('#show_hide_director').html() == "(show)") {
      $("#director_output").html(xhr.responseText);
      $('#show_hide_director').html("(hide)");
    } else {
      $("#director_output").html("");
      $('#show_hide_director').html("(show)");
    }
  });

  $('#show_hide_cast_member').on("ajax:success", function(e, data, status, xhr) {
    console.log($('#show_hide_cast_member').html());
    if ($('#show_hide_cast_member').html() == "(show)") {
      $("#cast_member_output").html(xhr.responseText);
      $('#show_hide_cast_member').html("(hide)");
    } else {
      $("#cast_member_output").html("");
      $('#show_hide_cast_member').html("(show)");
    }
  });
});
