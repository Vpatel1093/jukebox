# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  `$(document).ready(function() {
    albums = $('.carousel-container').children('div.album');
    albumSongs = $('.album-songs');
    var leftArrow = $('.arrow-container').first();
    var rightArrow = $('.arrow-container').last();

    // Initialize active album, active album songs, and album positions
    albums.first().addClass('active-album').addClass('position1');
    albums.eq(1).addClass('position2');
    albums.eq(2).addClass('position3');
    albums.eq(3).addClass('position4');
    albums.eq(4).addClass('position5');
    albumSongs.first().addClass('active-album-songs');

    // Rotate carousel with left and right arrow clicks, update album songs as well
    function rotateCarousel(direction) {
      if (direction === 'left') {
        $('.position1').removeClass('active-album').removeClass('position1').addClass('position2 temp');
        $('.position2:not(.temp)').removeClass('position2').addClass('position3 temp');
        $('.position3:not(.temp)').removeClass('position3').addClass('position4 temp');
        $('.position4:not(.temp)').removeClass('position4').addClass('position5 temp');
        $('.position5:not(.temp)').removeClass('position5').addClass('position1').addClass('active-album');
        $('.temp').removeClass('temp');

        var activeAlbumIndex = $('.active-album-songs').index('.album-songs-container div.album-songs');
        var newActiveAlbumIndex = activeAlbumIndex - 1;
        if (newActiveAlbumIndex === -1) { newActiveAlbumIndex = 4 }
        var albumSongs = $('.album-songs-container').children('div.album-songs');
        albumSongs.eq(activeAlbumIndex).removeClass('active-album-songs');
        albumSongs.eq(newActiveAlbumIndex).addClass('active-album-songs');

      } else if (direction === 'right') {
        $('.position1').removeClass('active-album').removeClass('position1').addClass('position5 temp');
        $('.position5:not(.temp)').removeClass('position5').addClass('position4 temp');
        $('.position4:not(.temp)').removeClass('position4').addClass('position3 temp');
        $('.position3:not(.temp)').removeClass('position3').addClass('position2 temp');
        $('.position2:not(.temp)').removeClass('position2').addClass('position1 temp').addClass('active-album');
        $('.temp').removeClass('temp');

        var activeAlbumIndex = $('.active-album-songs').index('.album-songs-container div.album-songs');
        var newActiveAlbumIndex = activeAlbumIndex + 1;
        if (newActiveAlbumIndex === 5) { newActiveAlbumIndex = 0 }
        var albumSongs = $('.album-songs-container').children('div.album-songs');
        albumSongs.eq(activeAlbumIndex).removeClass('active-album-songs');
        albumSongs.eq(newActiveAlbumIndex).addClass('active-album-songs');
      };
    };

    leftArrow.on("click", function() {
      rotateCarousel("left");
    });

    rightArrow.on("click", function() {
      rotateCarousel("right");
    });

    $('.star').on("click", function() {
      $(this).toggleClass("favorite");
    });
  });`
