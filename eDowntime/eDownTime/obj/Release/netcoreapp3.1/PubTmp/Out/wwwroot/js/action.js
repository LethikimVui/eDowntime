$(document).ready(function () {

    $('body').off('click', '#btn-search').on('click', '#btn-search', Load)
    $('body').off('click', '#btn-edit').on('click', '#btn-edit', Edit)

    var user = document.getElementById('userinfo').getAttribute('data-user');

    //LoadData()
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
        model.Yyww = $('#txt-ww-search').val() ? $('#txt-ww-search').val() : null;
        model.CustName = $('#txt-wc-search').val() ? $('#txt-wc-search').val() : null;
        model.Category = $('#txt-cat-search').val() ? $('#txt-cat-search').val() : null;
        model.Station = $('#txt-station-search').val() ? $('#txt-station-search').val() : null;
        model.StationName = $('#txt-stationname-search').val() ? $('#txt-stationname-search').val() : null;
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
        actionId = parseInt($(this).data('id'))
        model.ActionId = actionId
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
                $('#txt-station').text(data.station);
                $('#txt-stationname').text(data.stationName);
                $('#txt-totaldt').text(data.totalDT);
                $('#txt-overalimpact').text(data.overallImpact);
                $('#txt-description').text(data.problemDescription);
                $('#txt-rootcause').text(data.rootCause);
                $('#txt-action').text(data.containmentAction);
                $('#txt-capa').text(data.capa);
                $('#txt-ecnpcn').text(data.ecnpcn);
                $('#txt-fia').text(data.fia);
                $('#txt-person').val(data.responsible);
                $('#txt-commitdate').val(data.commitDate);
                $('#txt-status').text(data.remark);
                $('#actionId').val(actionId);
            }
        })

        var selectedFile = document.getElementById('upload')
        selectedFile.value = "";
        fileList = document.getElementById("fileList");
        fileList.innerHTML = "";
        const list = document.createElement("ul");
        fileList.appendChild(list);
        selectedFile.addEventListener("change", handleFiles, false);
    }

    function handleFiles() {
        debugger
        if (!this.files.length) {
            fileList.innerHTML = "<p>No files selected!</p>";
        }
        else {
            fileList.innerHTML = "";
            const list = document.createElement("ul");
            fileList.appendChild(list);
            for (let i = 0; i < this.files.length; i++) {
                const li = document.createElement("li");
                li.appendChild(document.createTextNode(this.files[i].name))
                list.appendChild(li);
            }
        }
    }

    $('body').off('click', '#btn-save').on('click', '#btn-save', Save);
    function Save() {
        var fileName = "";
        var getDate = new Date();
        var date = getDate.getFullYear().toString() + (getDate.getMonth() + 1) + getDate.getDate() + getDate.getHours() + getDate.getMinutes() + getDate.getSeconds() + getDate.getMilliseconds();
        var selectedFile = document.getElementById('upload').files;
        if (selectedFile.length) {
            for (let i = 0; i < selectedFile.length; i++) {
                fileName += selectedFile[i].name.split('.')[0] + '_' + date + '.' + selectedFile[i].name.split('.')[1] + ';';
                uploadFile(selectedFile[i], date);
            }
        }

        var model = new Object();

        model.ActionId = parseInt($('#actionId').val());
        //model.ActionCode = 1 // save
        model.ProblemDescription = $('#txt-description').val();
        model.RootCause = $('#txt-rootcause').val();
        model.ContainmentAction = $('#txt-action').val();
        model.Capa = $('#txt-capa').val();
        //model.OverallImpact = $('#txt-overalimpact').val();
        model.Ecnpcn = $('#txt-ecnpcn').val();
        model.Fia = $('#txt-fia').val();
        model.Responsible = $('#txt-person').val();
        model.CommitDate = $('#txt-commitdate').val();
        model.Remark = $('#txt-status').val();
        model.FileName = fileName ? fileName : null;
        model.UpdatedBy = user;
        debugger
        $.ajax({
            type: 'post',
            url: '/action/Acton_update',
            data: JSON.stringify(model),
            dataType: 'json',
            contentType: 'application/json,; charset=utf-8',
            success: function (response) {
                var data = response.results;
                debugger
                if (data.statusCode == 200) {
                    bootbox.alert("Save Successfully!", function () { LoadData(); })
                }
                else
                    bootbox.alert("Save Failed!")
            }
        })
    }

    $('body').off('click', '#btn-reset').on('click', '#btn-reset', Reset);
    function Reset() {
        window.location.reload();
    }

    function uploadFile(_file, _date) {
        var form_data = new FormData();
        form_data.append("files", _file);
        form_data.append("date", _date);
        debugger
        $.ajax({
            type: 'post',
            url: '/Action/UploadFile',
            data: form_data,
            contentType: false,
            dataType: 'json',
            processData: false,
            cache: false,
            success: function (data) {
                console.log(data)
            }
        })
    }

    updateList = function () {
        var input = document.getElementById('file');
        var output = document.getElementById('fileList');

        var li = document.createElement("li"); var getDate = new Date();
        var date = getDate.getFullYear().toString() + (getDate.getMonth() + 1) + getDate.getDate() + getDate.getHours() + getDate.getMinutes() + getDate.getSeconds() + getDate.getMilliseconds();

        li.innerHTML =
            `${input.files[input.files.length - 1].name.split('.')[0] + '_' + date + '.' + input.files[input.files.length - 1].name.split('.')[1]}
          <span 
            class="remove-list"  style="background-color:lightblue"
            onclick="return this.parentNode.remove()"
          >X</span>`;
        output.appendChild(li);
    }
})