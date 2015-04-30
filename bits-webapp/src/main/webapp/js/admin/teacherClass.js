/**
* Created by admin on 2015/4/29.
*/
var classListTable = function () {
    var reloadTable = function (pageFlag) {
        $("#datatable_ajax").DataTable().draw(pageFlag)
    };
    var onSortColumn = function (sortColumn, sortDirection) {
        switch (sortColumn) {
            case "classDescription":
                sortColumn = "class_description";
                break;
            case "username":
                sortColumn = "user_name";
                break;
            case "roleName":
                sortColumn = "role_name";
                break;
        }
        return onSortColumnDefault(sortColumn, sortDirection);
    };
    /**
     * dataTable事件初始化方法
     */
    var handleRecords = function () {
        var grid = new DataTable();
        var $table = $("#datatable_ajax");
        grid.init({
            src: $table,
            url: basePath + "admin/info/findAllClass",
            onSortColumn: onSortColumn,
            onQuery: function (data) {
                data.classDescription = $("#logName").val();
            },
            dataTable: {
                "columns": [
                    {data: 'classDescription', orderable: true},
                    {data: 'classDescription', orderable: true}
                ]
            }
        });


        //重新载入按钮事件
        $("#reloadTable").click(function () {
            reloadTable(false);
        });

        //显示列选择按钮事件
        $('#datatable_ajax_column_toggler').find('input[type="checkbox"]').change(function () {
            var iCol = parseInt($(this).attr("data-column"));
            $table.DataTable().column(iCol).visible(!$table.DataTable().column(iCol).visible());
        });
        //行删除按钮事件
        $table.find('a.delete').live('click', function () {
            var $this = $(this);
            //confirm中确认按钮事件，此处需要unbind，否则点击取消时下次再点击删除按钮会重复绑定click。
            $("#deleteRow").unbind("click.deleteRow").bind("click.deleteRow", function () {
                var $row = $table.DataTable().row($this.parents('tr')[0]);
                $.ajax({
                    url: basePath + "admin/user/delUserDo?id=" + $row.data().userId,
                    dataType: "json",
                    type: "DELETE",
                    success: function () {
                        $table.DataTable().draw();
                        $('#deleteRowConfirm').modal('hide');
                        toast.success();
                    },
                    error: doError
                })
            })
        });

    };

    return {
        init: function () {
            alert("zhixing");
            handleRecords();

        },
        addUserInfo: function () {
            $("#dialogTitle").text("用户添加");
            $("#userEditIframe").attr("src", basePath + "admin/user/addUserDo");
            $("#modalDialog").modal("show");
        },
        editUserInfo: function (id) {
            $("#dialogTitle").text("用户编辑");
            $("#userEditIframe").attr("src", basePath + "admin/user/editUserDo?id=" + id);
            $("#modalDialog").modal("show");
        },
        quit: function () {
            location.href = "about:blank";
            parent.parent.$("#modalDialog").modal("hide");
        },
        editSave: function () {
            $('#editForm').validate({
                onsubmit: true,
                errorElement: 'span', //default input error message container
                errorClass: 'help-block', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                rules: {
                    loginname: {
                        required: true,
                        remote: {
                            url: basePath + "admin/user/validateUserName",
                            type: "POST",
                            dataType: "json",
                            data: {
                                loginName: function () {
                                    return $("#loginname").val();
                                },
                                id: function () {
                                    return $("# ").val();
                                }
                            }
                        }
                    },
                    username: {
                        required: true
                    },
                    password: {
                        required: true
                    },
                    repassword : {
                        required : true,
                        equalTo : "#password"
                    },
                    roleName: {
                        required: true
                    }
                },
                messages: {
                    loginname: {
                        required: "账号不能为空！",
                        remote: "账号已经存在"
                    },
                    username: {
                        required: "用户名不能为空！"
                    },
                    password: {
                        required: "密码不能为空"
                    },
                    repassword: {
                        required: "确认密码不能为空",
                        equalTo: "两次密码输入不一致"
                    },
                    roleName : {
                        required: "请选择用户角色"
                    }
                },
                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    label.closest('.form-group').removeClass('has-error');
                    label.remove();
                },

                errorPlacement: function (error, element) {
                    error.insertAfter(element.closest('.form-control'));
                },

                submitHandler: function (form) {
                    $("#saves").button('loading');
                    $.ajax({
                        url: basePath + "admin/user/editUser",
                        data: {
                            userId: $("#checkId").val(),
                            loginName: $("#loginname").val(),
                            username: $("#username").val(),
                            password: $("#password").val() == $("#oldPassword").val() ? $("#oldPassword").val() : $("#password").val(),
                            roleId: $("#roleName").getAutoCompleteHiddenValue() == undefined ? $("#roleId").val() : $("#roleName").getAutoCompleteHiddenValue()
                        },
                        dataType: "json",
                        type: "POST",
                        success: function () {
                            location.href = "about:blank";
                            parent.parent.$("#modalDialog").modal("hide");
                            var $table = parent.$("#datatable_ajax");
                            $table.DataTable().draw();
                            parent.toast.success();
                        },
                        error: doError
                    })
                }
            });

        },
        addSave: function () {
            $('#addForm').validate({
                onsubmit: true,
                errorElement: 'span', //default input error message container
                errorClass: 'help-block', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                rules: {
                    loginname: {
                        required: true,
                        remote: {
                            url: basePath + "admin/user/validateUserName",
                            type: "POST",
                            dataType: "json",
                            data: {
                                loginName: function () {
                                    return $("#loginname").val();
                                },
                                id: function () {
                                    return 0;
                                }
                            }
                        }
                    },
                    username: {
                        required: true
                    },
                    password: {
                        required: true
                    },
                    repassword : {
                        required : true,
                        equalTo : "#password"
                    },
                    roleName: {
                        required: true
                    }
                },
                messages: {
                    loginname: {
                        required: "账号不能为空！",
                        remote: "账号已经存在"
                    },
                    username: {
                        required: "用户名不能为空！"
                    },
                    password: {
                        required: "密码不能为空"
                    },
                    repassword: {
                        required: "确认密码不能为空",
                        equalTo: "两次密码输入不一致"
                    },
                    roleName : {
                        required: "请选择用户角色"
                    }
                },
                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    label.closest('.form-group').removeClass('has-error');
                    label.remove();
                },

                errorPlacement: function (error, element) {
                    error.insertAfter(element.closest('.form-control'));
                },

                submitHandler: function (form) {
                    $("#saves").button('loading');
                    $.ajax({
                        url: basePath + "admin/user/addUser",
                        data: {
                            loginName: $("#loginname").val(),
                            username: $("#username").val(),
                            password: $("#password").val(),
                            roleId: $("#roleName").getAutoCompleteHiddenValue()
                        },
                        dataType: "json",
                        type: "POST",
                        success: function () {
                            location.href = "about:blank";
                            parent.parent.$("#modalDialog").modal("hide");
                            var $table = parent.$("#datatable_ajax");
                            $table.DataTable().draw();
                            parent.toast.success();
                        },
                        error: doError
                    })
                }
            });
        },
        reloadTable: reloadTable
    };

}();