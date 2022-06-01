$(document).ready(function () {
    $('body').off('click', '#btn-add').on('click', '#btn-add', Add);
    $('body').off('click', '#btn-delete').on('click', '#btn-delete', Delete);
    $('body').off('click', '#btn-search-input').on('click', '#btn-search-input', SearchName);
    $('body').off('click', '#btn-edit').on('click', '#btn-edit', Edit);
    $('body').off('click', '#btn-save').on('click', '#btn-save', Save);


    var user = document.getElementById('userinfo').getAttribute('data-user');

    function SearchName() {
        _ntid = $('#txt-search-input').val();
        debugger
        $.ajax({
            type: 'post',
            url: '/admin/GetDisplayNameFromSamAccountName',
            data: { samAccountName: _ntid },
            success: function (response) {
                debugger
                if (response) {
                    $('#txt-userName').text(response);
                    $('#txt-Ntlogin').val(_ntid);
                    $('#modal-search').modal('hide');
                }
                else {
                    bootbox.alert("User is not found");
                }
            }
        })

    }
    //$('#frm-save').validate({
    //    rules: {

    //        fm:
    //        {
    //            required: true,
    //        },
    //        rc:
    //        {
    //            required: true,
    //        },
    //        ca:
    //        {
    //            required: true,
    //        },
    //        cpa:
    //        {
    //            required: true,
    //        },
    //        pt:
    //        {
    //            required: true,
    //        },
    //        fano:
    //        {
    //            required: true,
    //        },
    //        datecode:
    //        {
    //            required: true,
    //        },
    //        mfr:
    //        {
    //            required: true,
    //        },
    //        fia:
    //        {
    //            required: true,
    //        },
    //        fiano:
    //        {
    //            required: true,
    //        },
    //        person:
    //        {
    //            required: true,
    //        },
    //        ws:
    //        {
    //            required: true,
    //        },
    //    },
    //    messages: {
    //        rc:
    //        {
    //            required: "You need to fill in Root Cause",
    //        },
    //        fm:
    //        {
    //            required: "You need to fill in Failure Mode",

    //        },
    //        fano:
    //        {
    //            required: "You need to fill in FA No.",

    //        },
    //        pt:
    //        {
    //            required: "You need to select this field",
    //        },
    //        cpa:
    //        {
    //            required: "You need to select this field",
    //        },
    //        datecode:
    //        {
    //            required: "You need to select this field",
    //        },
    //        mfr:
    //        {
    //            required: "You need to select this field",
    //        },
    //        fia:
    //        {
    //            required: "You need to select this field",
    //        },
    //        fiano:
    //        {
    //            required: "You need to select this field",
    //        },
    //        person:
    //        {
    //            required: "You need to select this field",
    //        },
    //        ws:
    //        {
    //            required: "You need to select this field",
    //        },
    //    }
    //});
    function Add() {
        ntlogin = $('#txt-Ntlogin').val();
        roleId = parseInt(document.getElementById("txt-roleId").value);
        custname = document.getElementById("txt-custId").value;
        if (ntlogin && roleId && custname) {

            var model = new Object();
            model.Ntlogin = ntlogin
            model.RoleId = roleId
            model.PlantId = 1 // parseInt(document.getElementById("txt-wc").value);
            model.CustName = custname
            model.CreatedBy = user;
            debugger
            $.ajax({
                type: 'post',
                url: '/admin/Access_UserRole_insert',
                data: JSON.stringify(model),
                contentType: "application/json; charset=utf-8",

                success: function (response) {
                    var data = response.results

                    if (data.statusCode == 200) {
                        bootbox.alert(data.message, function () {
                            location.reload(true);
                        })
                    }
                    else if (data.statusCode == 400) {
                        bootbox.alert(data.message)
                    }
                    else {
                        bootbox.alert("Update Error!")
                    }
                }
            })

        }
        else {
            bootbox.alert("Please select all required inputs");
        }
    }

    function Edit() {
        $(".error").html('');
        $(".error").removeClass("error");
        var Id = parseInt($(this).data('id'));
        $.ajax({
            type: 'post',
            url: '/admin/Access_UserRole_Get_By_Id',
            dataType: 'json',
            data: { Id: Id },
            success: function (response) {
                var data = response.results[0]
                debugger

                $('#txt-ntlogin').text(data.ntlogin);
                $('#txt-name').text(data.userName);
                $('#txt-roleid').val(data.roleId);
                $('#txt-custid').val(data.custName);
                //$('#txt-remark').val(data.remark);
                $('#roleId').val(Id);
            }
        })
    }
    function Save() {
        var model = new Object();
        model.UserRoleId = parseInt($('#roleId').val());
        model.PlantId = 1
        model.CustName = $('#txt-custid').val();
        model.RoleId = parseInt($('#txt-roleid').val());
        model.UpdatedBy = user;
        debugger
        $.ajax({
            type: 'post',
            url: '/admin/Access_UserRole_update',
            data: JSON.stringify(model),
            dataType: 'json',
            contentType: 'application/json,; charset=utf-8',
            success: function (response) {
                var data = response.results;
                debugger
                if (data.statusCode == 200) {
                    bootbox.alert("Save Successfully!", function () { window.location.reload(); })
                }
                else
                    bootbox.alert("Save Failed!")
            }
        })

    }

    function Delete() {
        userRoleId = $(this).attr('data-id');
        debugger
        ntlogin = $(this).attr('data-ntlogin');
        var model = new Object();
        model.UserRoleId = parseInt(userRoleId);
        model.UpdatedBy = user;
        $.ajax({
            type: 'post',
            url: '/admin/Access_UserRole_delete',
            data: JSON.stringify(model),
            contentType: "application/json; charset=utf-8",
            success: function (response) {

                var data = response.results;
                if (data.statusCode == 200) {
                    bootbox.alert(`${ntlogin} is deleted`, function () {
                        location.reload(true);
                    })
                }
                else {
                    bootbox.alert("Error");
                }

            }
        })
    }

})