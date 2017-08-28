$('#li1').mouseover(function()
{
	$('#li1').css('backgroundColor','white');
	$('#li1').css('color','#FF5F19');
});

$('#li1').mouseout(function()
{
	$('#li1').css('backgroundColor','#FF5F19');
	$('#li1').css('color','white');
});

$('#li2').mouseover(function()
{
	$('#li2').css('backgroundColor','white');
	$('#li2').css('color','#FF5F19');
});

$('#li2').mouseout(function()
{
	$('#li2').css('backgroundColor','#FF5F19');
	$('#li2').css('color','white');
});

$('#li3').mouseover(function()
{
	$('#li3').css('backgroundColor','white');
	$('#li3').css('color','#FF5F19');
});

$('#li3').mouseout(function()
{
	$('#li3').css('backgroundColor','#FF5F19');
	$('#li3').css('color','white');
});

$(function(){
    $('#li1.dropdown').hover(function() {
        $(this).addClass('open');
    },
    function() {
        $(this).removeClass('open');
    });
});

$(function(){
    $('#li2.dropdown').hover(function() {
        $(this).addClass('open');
    },
    function() {
        $(this).removeClass('open');
    });
});

$(function(){
    $('#li3.dropdown').hover(function() {
        $(this).addClass('open');
    },
    function() {
        $(this).removeClass('open');
    });
});