'use strict';
function init(){
    var butStart = $('#butStartTest');
    if ( ! butStart ) {
        return;
    }
    $(butStart).click(function (e) {
        e.preventDefault();
        var d = new Date(),
            startTime = d.getFullYear() + "-"
                + ( d.getMonth() + 1 )  + "-"
                + d.getDate() + " "
                + d.getHours() + ":"
                + d.getMinutes() + ":"
                + d.getSeconds();
        $('#startTime').val(startTime);

        $('#titleContainer').css('display', 'none');
        $('#questionsContainer').css('display', 'block');

        $(this).text('Идет тестирование...');
        $(this).attr('disabled', 'disabled');
    });

    var form = $('#testCreate');

    $(form).submit( function(e) {
        e.preventDefault();
        var d = new Date(),
            finishTime = d.getFullYear() + "-"
                + ( d.getMonth() + 1 )  + "-"
                + d.getDate() + " "
                + d.getHours() + ":"
                + d.getMinutes() + ":"
                + d.getSeconds();
        $('#finishTime').val(finishTime);

        var data = $(this).serialize(),
                method = $(this).attr('method'),
                action = $(this).attr('action');

            $.ajax({
                type: method,
                url: action,
                data: data
            }).done(function(data) {
                if (data.errors) {
                    $(butStart).addClass('btn-danger');
                    $(butStart).text(data.errors);
                }
                if (data.success) {
                    $(butStart).removeClass('btn-danger');
                    $(butStart).addClass('btn-success');
                    $(butStart).text(data.success);
                    $('#butSubmitTest').attr('disabled', 'disabled');
                }
            }).fail(function() {
                console.log('Error network, повторите запрос');
            });
        });
}
window.onload = init;
