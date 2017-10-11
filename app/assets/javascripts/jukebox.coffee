# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  `$(document).ready(function() {
    albums = $('.carousel-container').children('div.album');
    albumSongs = $('.album-songs');
    leftArrow = $('.arrow-container').first();
    rightArrow = $('.arrow-container').last();

    // Initialize active album, active album songs, and album positions
    albums.first().addClass('active-album').addClass('position1');
    albums.eq(1).addClass('position2');
    albums.eq(2).addClass('position3');
    albums.eq(3).addClass('position4');
    albums.eq(4).addClass('position5');
    albumSongs.first().addClass('active-album-songs');
  });`
