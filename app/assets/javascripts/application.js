// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

  $(document).ready(function() {
    $("p").text("jQuery稼働テスト(稼働中)");
  });



  //画面高さ取得
  $(window).load(function() {
    h = $(window).height();
    $('#container').css('height', h + 'px');
  });

  //画面リサイズ時の高さ取得
  $(window).resize(function() {
  })



