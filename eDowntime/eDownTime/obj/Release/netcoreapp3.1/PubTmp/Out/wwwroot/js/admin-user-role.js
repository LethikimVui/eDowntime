$(document).ready(function () {
    $('body').off('click', '#btn-search').on('click', '#btn-search', Search);

    $('body').off('click', '#btn-add').on('click', '#btn-add', Add);
    $('body').off('click', '#btn-delete').on('click', '#btn-delete', Delete);
    $('body').off('click', '#btn-search-input').on('click', '#btn-search-input', SearchName);
    $('body').off('click', '#btn-edit').on('click', '#btn-edit', Edit);
    $('body').off('click', '#btn-save').on('click', '#btn-save', Save);


    user = document.getElementById('userinfo').getAttribute('data-user');
    name = document.getElementById('userinfo').getAttribute('data-display-name');
    email = document.getElementById('userinfo').getAttribute('data-email');

    function Search() {
        $('#tbl-content').html('');
        var model = new Object();

        model.CustName = $("#txt-customer-search").val() ? $("#txt-customer-search").val() : null;
        model.RoleId = $("#txt-role-search").val() ? parseInt($("#txt-role-search").val()) : 0;
        model.Ntlogin = $('#txt-ntlogin-search').val() ? $('#txt-ntlogin-search').val() : null;
        debugger
        Load(model)

    }
    function Load(model) {
        $.ajax({
            type: 'post',
            url: '/Admin/User_Get',
            //dataType: 'json',
            data: JSON.stringify(model),
            contentType: 'application/json;charset=uft-8',
            success: function (response) {
                debugger
                $('#tbl-content').html(response);
            }
        })
    }
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
            model.CreatedName = name;
            model.CreatedEmail = email;
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
                    else {
                        bootbox.alert(data.message)
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
        model.UpdatedName = name;
        model.UpdatedEmail = email;
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
                    bootbox.alert(data.message)
            }
        })

    }

    function Delete() {
        userRoleId = $(this).attr('data-id');
        userName = $(this).attr('data-name');
        debugger
        ntlogin = $(this).attr('data-ntlogin');
        bootbox.confirm(`Are you sure to delete ${userName} ?`, function (result) {
            if (result) {

                var model = new Object();
                model.UserRoleId = parseInt(userRoleId);
                model.UpdatedBy = user;
                model.UpdatedName = name;
                model.UpdatedEmail = email;
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
                            bootbox.alert(data.message);
                        }

                    }
                })
            }
        })
    }

})