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
//= require turbolinks
//= require_tree .

function genre_show (url) {
  $.get(url, function(data) {
    $('#output').html(data);
    $('#show_hide_genre').html("(hide)");
  });
}

function genre_hide (url) {
  $.get(url, function(data) {
    $('#output').html("");
    $('#show_hide_genre').html("(show)");
  });
}

$(document).ready(function() {
  $('#show_hide_genre').click(function(e) {
    var url = $(this).attr('href');
    if ( $('#show_hide_genre').html() == "(show)" ) {
      genre_show(url);
    } else {
      genre_hide(url);
    }
    e.preventDefault();
  });

});
