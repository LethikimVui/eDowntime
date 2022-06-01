$(document).ready(function () {
    document.getElementById('txt-station-search').addEventListener('change', fncOnChangeStation, false)

    function fncOnChangeStation() {
        var station = document.getElementById('txt-station-search').value;
        $('#txt-stationname-search').empty();
        $('#txt-stationname-search').append($('<option>', {
            value: "",
            text: "--Please Select--"
        }));
        $.ajax({
            type: 'post',
            url: '/common/StationName_get',
            dataType: 'json',
            data: { station: station },
            success: function (response) {
                var data = response.result;
                debugger
                $.each(data, function (index, value) {
                    $('#txt-stationname-search').append($('<option>', {
                        value: value.stationName,
                        text: value.stationName
                    }));
                });
            }
        })
    }

    document.getElementById('txt-wc-search').addEventListener('change', fncOnchangeCustomer, false)
    function fncOnchangeCustomer() {
        var custName = document.getElementById('txt-wc-search').value;
        $('#txt-ww-search').empty();
        $('#txt-ww-search').append($('<option>', {
            value: "",
            text: "--Please Select--"
        }));
        $.ajax({
            type: 'post',
            url: '/common/WorkWeek_get',
            dataType: 'json',
            data: { custName: custName },
            success: function (response) {
                var data = response.result;
                debugger
                $.each(data, function (index, value) {
                    $('#txt-ww-search').append($('<option>', {
                        value: value.yyww,
                        text: value.yyww
                    }));
                });
            }
        })


        $('#txt-cat-search').empty();
        $('#txt-cat-search').append($('<option>', {
            value: "",
            text: "--Please Select--"
        }));
        $.ajax({
            type: 'post',
            url: '/common/Category_get',
            dataType: 'json',
            data: { custName: custName },
            success: function (response) {
                var data = response.result;
                debugger
                $.each(data, function (index, value) {
                    $('#txt-cat-search').append($('<option>', {
                        value: value.category,
                        text: value.category
                    }));
                });
            }
        })
    }

})