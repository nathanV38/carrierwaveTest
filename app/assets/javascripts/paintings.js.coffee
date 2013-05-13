# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
   new AvatarCropper()
   
class AvatarCropper
 constructor: ->
  $('#cropbox').Jcrop
   aspectRatio: 1
   setSelect: [0,0,600,600]
   onSelect: @update
   onChange: @update
		 
 update: (coords) =>
  $('#painting_crop_x').val(coords.x)
  $('#painting_crop_y').val(coords.y)
  $('#painting_crop_w').val(coords.w)
  $('#painting_crop_h').val(coords.h)
