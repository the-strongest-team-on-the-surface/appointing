var STOREID;
var STORENAME;
var STORETEL
var BABERID;
var BABERNAME;
var BABERWORK;
var SERVICEID;
var SERVICENAME;
var SERVICETIME;
var SERVICEPRICE;
//查找地址
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

//查找按钮,发送请求
function searchstore() {
    tgpl(1)
    return false;
}

function presentCode() {
    var i = 4;
    while (!($("#addr" + i).val())) {
        i--;
    }
    var code = $("#addr" + i).val();
    return code;
}

//查找第pn页
function tgpl(pn) {

    $("#stores").empty();
    $("#showdown2").empty();
    $("#showdown1").empty();

    var code = presentCode();

    var params = {
        "pn": pn,
        "code": code,
    }

    $.ajax({
        type: "post",
        url: pageContext + "/wtf/stores",
        data: params,
        dataType: 'json',
        success: function (stores_info) {
            if (stores_info.pages != 0) {
                show_stores(stores_info);
                show_down1(stores_info, pn);
                show_down2(stores_info, pn);
            }
        }
    })
}

//显示商店
function show_stores(stores_info) {
    var blist = stores_info.list;
    $.each(blist, function (index, item) {

        if (index % 2 == 0) {
            $("<div class='clearfix' style='margin-bottom: 10px;'></div>").appendTo('#stores');
        }
        var storeid = item.storeId;
        var tdiv1 = $("<div onclick='to_baber(" + storeid + ")'></div>").addClass("col-md-6 column");
        var tdiv2 = $("<div></div>").addClass("col-md-3 column");
        var tdiv3 = $("<div></div>").addClass("col-md-9 column");
        var th3 = $("<p id='storename" + item.storeId + "'></p>").addClass("text-left").text(item.name);
        var th4 = $("<small id='storetel" + item.storeId + "'></small>").addClass("text-left").text(item.telNum);

        var tsmall = $("<small></small>").text("详细信息 ： " + item.detailedAddress);
        var timg = $("<img alt='70x70' src='C:\\Users\\Administrator\\Desktop\\default1.jpg'></img>");

        tdiv1.append(tdiv2.append(timg)).append((tdiv3.append(th3).append(th4).append(tsmall))).appendTo("#stores");


    });
}


function show_down1(stores_info, pn) {


    var info = $("<h5>当前第 " + pn + " 页， 共 " + stores_info.pages + " 页， 共 " + stores_info.total + " 条数据</h5>")
    info.appendTo("#showdown1");

}

function show_down2(stores_info, pn) {

    var tnav = $("<nav aria-label='Page navigation'></nav>");

    var tui = $("<ul class='pagination' id='home_nav'></ul>");

    tnav.append(tui).appendTo("#showdown2");

    var tpn = stores_info.pages - stores_info.pageNum;
    var tin;
    if (pn == 1) tin = 0;
    else if (pn == 2) tin = -1;
    else tin = -2;

    var tli = $("<li></li>");
    var tlif = $("<li></li>").append($("<a id='first'></a>").text("First")).appendTo("#home_nav");
    var tlip = $("<li></li>").append($("<a id='pre'><span aria-hidden='true'>&laquo;</span></a>")).appendTo("#home_nav");
    if (pn == 1) {
        tlif.addClass("disabled");
        tlip.addClass("disabled");
    }
    else {
        $("#pre").attr("onclick", "tgpl(" + (pn - 1) + ")");
        $("#first").attr("onclick", "tgpl(1)");
    }

    for (var index = tin; index <= (tpn < 2 ? tpn : 2); index++) {
        var tli2 = $("<li></li>");
        if (index == 0) {
            tli2.addClass("active");
        }
        tli2.append($("<a onclick='tgpl(" + (pn + index) + ")'></a>").text(pn + index)).appendTo("#home_nav");

    }
    var tlin = $("<li></li>").append($("<a id='next' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a>")).appendTo("#home_nav");
    var tlil = $("<li></li>").append($("<a id='last'></a>").text("last")).appendTo("#home_nav");
    if (!stores_info.hasNextPage) {
        tlin.addClass("disabled");
        tlil.addClass("disabled");
    }
    else {
        $("#next").attr("onclick", "tgpl(" + (pn + 1) + ")");
        $("#last").attr("onclick", "tgpl(" + (stores_info.pages) + ")");
    }


}


// 显示理发师
function to_baber(id) {
    STOREID = id;
    STORENAME = $("#storename" + id).text();
    STORETEL = $("#storetel" + id).text();

    $('#myTab li:eq(1) a').tab('show');
    $.get(pageContext + "/wtf/baberBystoreId?storeId=" + id, function (babers) {

        var panel = $("#accordion");
        panel.empty();

        $.each(babers, function (index, item) {
            var paneltemp = $("<div class='panel panel-default'></div>");
            var panelhead = $("<div class='panel-heading'></div>");
            var header = $("<div class='header'></div>");
            var image = $("<img alt='140x140' src='C:\\Users\\Administrator\\Desktop\\default1.jpg' class='img-circle' />");
            var baberinfo = $("<p class='panel-title col-sm-offset-2'></p>");
            var a = $("<a data-toggle='collapse' data-parent='#accordion' id='baber" + item.baberId + "' name='" + item.actualWorkingTimePeriod + "' href='#collapse" + item.baberId + "'> 姓名：" + item.name + "  性别：" + item.sex + "</br>电话：" + item.telNum + "</br>详细信息：" + "sdkjflksdajflkdssdjfllksajf" + "</a>");
            var btn = $("<button type='button' class='btn btn-primary col-sm-offset-9' onclick='appoint(" + item.baberId + ")' data-toggle='modal' data-target='#myModal'>预约</button>");

            if (item.baberId == 1)
                var panelbody = $("<div id='collapse" + item.baberId + "' class='panel-collapse collapse in'></div>");
            else
                var panelbody = $("<div id='collapse" + item.baberId + "' class='panel-collapse collapse'></div>");

            var panelbody1 = $("<div class='panel-body'></div>");
            var p1 = $("<div></div>").addClass("col-md-2 column");

            var p2 = $("<div><div class='clearfix' style='margin-bottom: 12px;'></div></div>").addClass("col-md-2 column col-sm-offset-1");
            var p3 = $("<div><div class='clearfix' style='margin-bottom: 12px;'></div></div>").addClass("col-md-2 column col-sm-offset-1");

            $.get(pageContext + "/wtf/servicesBybaberId?baberId=" + item.baberId, function (services) {

                $.each(services, function (sindex, sitem) {

                    var t1 = $("<label class='checkbox'><input type='radio' id='service1" + sitem.serviceId + "' name='radio" + item.baberId + "'value='" + sitem.name + "'>" + sitem.name + "</label>");
                    var t2 = $("<label id='service2" + sitem.serviceId + "'>时长：" + sitem.duration + "分钟" + "</label>");
                    var t3 = $("<label id='service3" + sitem.serviceId + "'>" + "价格：" + sitem.price + "元" + "</label>");
                    if (!sindex) {
                        t1.prop("checked", "checked");
                        t1.click();
                    }
                    p1.append(t1);
                    p2.append(t2);
                    p3.append(t3);
                })

            })

            panelbody1.append(p1).append(p2).append(p3);
            panel.append(paneltemp.append(panelhead.append(header.append(image).append(baberinfo.append(a).append(btn)))).append(panelbody.append(panelbody1)));
        })

    });
}
//确定那个项目
function appoint(baberId) {
    BABERID = baberId;
    BABERNAME = $("#baber" + baberId).text();
    var x = BABERNAME.indexOf("性");
    BABERNAME = BABERNAME.substring(4, x);
    var radios = document.getElementsByName("radio" + baberId);
    for (var i = 0; i < radios.length; ++i) {
        if (radios[i].checked) {
            SERVICEID = radios[i].id.slice(8);
            SERVICENAME = radios[i].value;
            SERVICETIME = $("#service2" + SERVICEID).text();
            SERVICEPRICE = $("#service3" + SERVICEID).text();
            break;
        }
    }
    createModel();
}
//模态框
function createModel() {
    var body = $("#inmodalbody");
    var time = $("#times");
    body.empty();
    time.empty();
    var text0 = $("<h3>预约信息：</h3>");
    var text1 = $("<h4></h4>").text("理发店：" + STORENAME);
    var text2 = $("<h4></h4>").text("电话：" + STORETEL);
    var text3 = $("<h4></h4>").text("理发师：" + BABERNAME);
    var text4 = $("<h4></h4>").text("项目：" + SERVICENAME + "  " + SERVICETIME + "  " + SERVICEPRICE);
    body.append(text1).append(text2).append(text3).append(text4);
    $.get(pageContext + "/wtf/baberinfoByid?baberId=" + BABERID, function (baber) {
        BABERWORK = baber.actualWorkingTimePeriod;
    })
    var today = new Date();
    var tomorrow = new Date(today.getTime() + 24 * 60 * 60 * 1000);
    var houday = new Date(tomorrow.getTime() + 24 * 60 * 60 * 1000);
    var days = new Array();
    days[0] = today;
    days[1] = tomorrow;
    days[2] = houday;
    var flag = 1;
    $("<option value='-1'>请选择预约时间 </option>").appendTo(time);
    for (var day = 0; day < 3; ++day) {
        for (var h = 0; h < 24; ++h) {
            if (!day && flag) {
                h = days[day].getHours();
                flag = 0;
                continue;
            }
            if (BABERWORK[day * h] == '1') {
                $("<option value='" + day * h + "'>" + (days[day].getMonth() + 1) + " 月" + days[day].getDate() + " 日 " + h + ":00" + "</option>").appendTo(time);
            }
        }
    }
}

function confirm()
{
    var params = {
        "pn": pn,
        "code": code,
    }
    $.ajax({
        type: "post",
        url: pageContext + "/wtf/addAppoint",
        data: params,
        dataType: 'json',
        success: function (ret) {
           alert("预约成功！");
        }
    })
}