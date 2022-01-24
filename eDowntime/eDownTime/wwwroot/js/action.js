$(document).ready(function () {

    $('body').off('click', '#btn-search').on('click', '#btn-search', Load)
    $('body').off('click', '#btn-edit').on('click', '#btn-edit', Edit)
    LoadData()
    function Load() {
        debugger
        $('#tbl-content').html("")
        if ($('#txt-wc-search').val()) {
            LoadData();
        }
        else {
            bootbox.alert('Please select customer!')
        }
    }

    function LoadData() {
        var model = new Object();
        model.Wwyy = $('#txt-ww-search').val() ? $('#txt-ww-search').val() : null;
        model.CustName = $('#txt-wc-search').val() ? $('#txt-wc-search').val():null;
        model.Category = $('#txt-cat-search').val() ? $('#txt-cat-search').val() : null;
        debugger
        $.ajax({
            type: 'post',
            url: '/action/Get_partial',
            data: JSON.stringify(model),
            contentType: 'application/json,; charset=utf-8',
            success: function (data) {
                $("#tbl-content").html(data);
            }
        })
    }

    function Edit() {
        var model = new Object();
        model.ActionId = parseInt($(this).data('id'));
        debugger

        $.ajax({
            type: 'post',
            url: '/action/Get_By_ActionId',            
            //dataType: 'json',
            data: JSON.stringify(model),
            contentType: 'application/json,; charset=utf-8',
            success: function (response) {
                var data = response.results;
                debugger
                $('#txt-yyww').text(data.yyww);
                $('#txt-wc').text(data.custName);
                $('#txt-category').text(data.category);
                $('#txt-details').text(data.details);
                $('#txt-description').text(data.problemDescription);
                $('#txt-rootcause').text(data.rootCause);
                $('#txt-action').text(data.containmentAction);
                $('#txt-capa').text(data.capa);
                $('#txt-overalimpact').text(data.overallImpact);
                $('#txt-ecnpcn').text(data.ecnpcn);
                $('#txt-fia').text(data.fia);
                $('#txt-person').text(data.responsible);
                $('#txt-commitdate').text(data.commitDate);
                $('#txt-ws').text(data.remark);
            }
        })
    }


})