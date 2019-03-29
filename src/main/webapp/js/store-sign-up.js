$(function () {
    var code = "0";
    $.get(pageContext + "/wtf/addr?code=" + code, function (addr) {
        selectChange(addr);
    });
});
function selectChange(addr) {
    var ee = 1;
    $("<option value='0'></option>").appendTo('#addr' + ee);
    $.each(addr, function (index, item) {
        $("<option value='" + item.code + "'>" + item.name + "</option>").appendTo('#addr' + ee);
    });

}
function eChange(ee, code) {
    $.get(pageContext + "/wtf/addr?code=" + code, function (addr) {

        for (var i = ee; i < 5; i++) {
            $("#addr" + i).empty();
        }

        if (code != "0") {
            $("<option value='0'></option>").appendTo('#addr' + ee);
            $.each(addr, function (index, item) {
                $("<option value='" + item.code + "'>" + item.name + "</option>").appendTo('#addr' + ee);
            });
        }

    });

}
function onsm() {
    var name = $('#name').val();
    var password1 = $('#password1').val();
    var telnum = $('#telnum').val();
    var password2 = $('#password2').val();
    var daddr = $.trim($('#daddr').val());
    var addr = $('#addr1').val();

    var retel = /^1[34578]\d{9}$/;
    if (retel.test(telnum)) {
    } else {
        alert("请输入正确的手机号！");
        return false;
    }

    var repwd = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,16}$/;
    if (repwd.test(password1)) {
    } else {
        alert("请输入正确的密码！");
        return false;
    }

    if (password1 == password2) {
    } else {
        alert("请两次输入一致的密码！");
        return false;
    }

    var rename = /^.{1,20}$/;
    if (rename.test(name)) {
    } else {
        alert("请输入最多20位的姓名！");
        return false;
    }

    if (daddr == "") {
        alert("请输入店铺详细地址！");
        return false;
    }

    if (addr == "0") {
        alert("请选择店铺地址！");
        return false;
    } else if ($('#addr1').val() == "47493" || $('#addr1').val() == "47494" || $('#addr1').val() == "47495") {
        addr = $('#addr1').val();
    } else if ($('#addr2').val() == "0") {
        alert("请至少选择三级地址！");
        return false;
    } else if ($('#addr3').val() == "0") {
        alert("请至少选择三级地址！");
        return false;
    } else if ($('#addr4').val() == "0") {
        addr = $('#addr3').val();
    } else {
        addr = $('#addr4').val();
    }

    var param = {};
    param.name = name;
    param.password = password1;
    param.code = addr;
    param.telNum = telnum;
    param.detailedAddress = daddr;


    $.ajax({
        type: 'POST',
        data: JSON.stringify(param),
        contentType: 'application/json',
        dataType: 'json',
        url: pageContext + '/wtf/stosignup',
        async: false,
        success: function (data) {
            if (data > 0)
                alert("注册成功")
            else
                alert("注册失败！")
        },
        error: function (e) {
            alert("system error");
        }
    })

    return false;
}