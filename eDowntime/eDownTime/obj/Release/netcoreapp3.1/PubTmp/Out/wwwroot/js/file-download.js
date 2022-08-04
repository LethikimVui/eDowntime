// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

$(document).ready(function () {
    $('body').off('click', '#btn-export').on('click', '#btn-export', DownloadAsExcel);


    const EXCEL_TYPE = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=UTF-8';
    const EXCEL_EXTENSION = '.xlsx';

    function DownloadAsExcel() {
        var data = [];

        if ($('#txt-wc-search').val()) {
            var model = new Object();
            model.Wwyy = $('#txt-ww-search').val() ? $('#txt-ww-search').val() : null;
            model.CustId = parseInt($('#txt-wc-search').val());
            model.Pn = $('#txt-pn-search').val() ? $('#txt-pn-search').val() : null;
            debugger
            $.ajax({
                async: false,
                type: 'post',
                url: '/Action/Action_export',
                data: JSON.stringify(model),
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                success: function (response) {
                    data = response.result;
                    const worksheet = XLSX.utils.json_to_sheet(data);
                    const workbook = {
                        Sheets: {
                            'data': worksheet
                        },
                        SheetNames: ['data']
                    };
                    const excelBuffer = XLSX.write(workbook, { bookType: 'xlsx', type: 'array' });
                    SaveAsExcel(excelBuffer, 'Q3');
                }
            });
        }
        else {
            bootbox.alert('Please select customer!')
        }
    }

    function SaveAsExcel(buffer, filename) {
        var dateTime = new Date(Date.now());
        var strDateTime = dateTime.getFullYear() + '' + (dateTime.getMonth() + 1) + dateTime.getDate() + dateTime.getHours() + dateTime.getMinutes() + dateTime.getMilliseconds();
        const data = new Blob([buffer], { type: EXCEL_TYPE });
        debugger
        saveAs(data, filename + strDateTime + EXCEL_EXTENSION);

    }

})
