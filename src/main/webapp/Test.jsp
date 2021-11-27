<%--
  Created by IntelliJ IDEA.
  User: zhaolu
  Date: 2021-11-21
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<h2>SSM测试</h2>
<div id="d1" style="border: dashed;height: 100px;width: 300px">
    传入文本：<input type="text" id="send_text">
    <button id="btn1">发送</button>
</div>
<div id="d2" style="border: dashed;height: 100px;width: 300px">
    收到文本：<input type="text" id="receive_text">
</div>
<script type="text/javascript">
    $("#btn1").click(function () {
        $.ajax({
            url: "TestSSM", //后台url
            type: "post", //post请求方式
            data: {"SendMessage": $("#send_text").val()}, //参数是id为send_text文本框里的内容
            success: function (data) {
                $("#receive_text").val(data); //成功返回data数据到id为receive_text文本框里
            }
        })
    });
</script>
</body>
</html>
