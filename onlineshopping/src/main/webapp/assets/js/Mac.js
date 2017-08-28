$(document).ready(function()
{
	$('#tog1').hide();
});

$('.mac').mouseover(function()
{
	$(this).css("cursor","pointer");
	$(this).animate({width:"85%",height:"30%"},'fast');
	
});

$('.mac').mouseout(function()
{
	$(this).css("cursor","pointer");
	$(this).animate({width:"80%",height:"25%"},'fast');
	
});

$('#mac6').mouseover(function()
{
	$(this).css("cursor","pointer");
	$(this).animate({width:"85%",height:"45%"},'fast');
	
});

$('#mac6').mouseout(function()
{
	$(this).css("cursor","pointer");
	$(this).animate({width:"80%",height:"40%"},'fast');
	
});

$('#mac8').mouseover(function()
{
	$(this).css("cursor","pointer");
	$(this).animate({width:"85%",height:"55%"},'fast');
	
});

$('#mac8').mouseout(function()
{
	$(this).css("cursor","pointer");
	$(this).animate({width:"80%",height:"50%"},'fast');
	
});