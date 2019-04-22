/* // to discard change in product Edit

$(document).ready(function () {
    $('#evaluationFormEdit').click(function () {
        $('#evaluationForm').find(':input').each(function (i, elem) {
            $(this).data("previous-value", $(this).val());
        });
    });

    function restore() {
        $('#evaluationForm').find(':input').each(function (i, elem) {
            $(this).val($(this).data("previous-value"));
            $('#evaluationFormEditCancel').val('Discard');
            $('#save').val('Save');
        });
    }

    $('#evaluationFormEditCancel').click(function () {
        restore();
        
    });
}); */

