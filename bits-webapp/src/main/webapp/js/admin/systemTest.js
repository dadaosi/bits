/**
 * Created by admin on 2015/4/27.
 */



/*
$(function() {
    $(".btn").click(function(){
        $(this).button('loading').delay(1000).queue(function() {
            // $(this).button('reset');
            alert("a");
        });
    });
});

//*/
$(function()  {
    jQuery("#saves").click(function () { alert("发过去");
        $.ajax({
            url: basePath + "/admin/test/addPermission",
            data: {
                id: 9,
                permToken:'asdf',
                description: 'hahaha'
            },
            dataType: "json",
            type: "POST",
            success: function () {
                alert("cheng gong");
            },
            error: function (e){
                    alert(e);
            }
        })
    });
})




//var submitHandler = function () {
//    $("#saves").button('loading');
//    $.ajax({
//        url: basePath + "admin/permission/editPermission",
//        data: {
//            id: 1,
//            permToken:2,
//            description: 3
//        },
//        dataType: "json",
//        type: "POST",
//        success: function () {
//            location.href = "about:blank";
//            parent.parent.$("#modalDialog").modal("hide");
//            var $table = parent.$("#datatable_ajax");
//            $table.DataTable().draw();
//            parent.toast.success();
//        },
//        error: doError
//    })
//}