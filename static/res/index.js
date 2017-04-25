var result = $('<div/>');
var curDepth = 0;
var headers = $('*').filter(function() {
    return this.tagName.match(/h\d/i);
}).get();

$.each(headers, function (index) {
    var a = $('<a/>').text($(this).text()).attr('href', '#' + $(this).attr('id'));
    var li = $('<li/>').append(a);
    var depth = parseInt(this.tagName.substring(1));
    if (depth > curDepth) {
        result.append($('<ol/>').append(li));
        result = li;
    } else if (depth < curDepth) {
        result.parents('ol:eq(' + (curDepth - depth) + ')').append(li);
        result = li;
    } else {
        result.parent().append(li);
        result = li;
    }
    curDepth = depth;
});
result = result.parents('ol:last');

$('nav').append(result)

$('nav').click(function(){
    $(this).toggleClass('expanded');
    $(this).children().toggleClass('expanded');
});