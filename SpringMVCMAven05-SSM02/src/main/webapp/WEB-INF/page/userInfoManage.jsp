<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>用户信息页面</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="http://www.jeasyui.net/Public/js/easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css" />
    <link href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="http://www.jeasyui.net/Public/js/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
</head>

<body class="easyui-layout">
<div data-options="region:'north',split:true" style="height:100px;">
    <span style="font-size: 50px;padding-top: 15px;padding-left: 400px">测试平台</span>
</div>
<div data-options="region:'west',split:true" style="width:200px;">
    <ul id="tt"></ul>
</div>
<div id="mainPanle" data-options="region:'center'," style="padding:5px;background:#eee;">
    <div id="tabs"  class="easyui-tabs" fit="true" border="false"></div>
</div>
</body></body>
<script type="text/javascript">
    $(function(){
        $('#tt').tree({
            onClick: function (node) {
                if(node.text == '退出系统'){
                    window.location.href = "<%=basePath%>/login.do?mothod=enterLoginPage";
                }
                if (!node.children && node.text != '退出系统'){
                    addTab(node.text,node.url);
                }
            },
            data: [{
                text: '考生自助管理',
                state: 'open',
                children: [{
                    "iconCls":"icon-edit",
                    text: '用户信息展示',
                    url:'<%=basePath%>/userInfoMagger.do?mothod=enterUserInfoShowPage'
                },{
                    "iconCls":"icon-edit",
                    text: '用户信息更改',
                    url:'<%=basePath%>/userInfoMagger.do?mothod=enterUserInfoUpdatePage'
                },{
                    "iconCls":"icon-edit",
                    text: '退出系统',
                }]
            }]
        });

    })

    function addTab(subtitle,url){
        if (!$('#tabs').tabs('exists', subtitle)) {
            $('#tabs').tabs('add', {
                title: subtitle,
                content: createFrame(url),
                closable: true,
                width: $('#mainPanle').width() - 10,
                height: $('#mainPanle').height() - 26
            });
        } else {
            $('#tabs').tabs('select', subtitle);
        }
    }
    function closeTab(title){
        if(title == '新增试卷'){
            $.messager.alert('提示','新增试卷成功')
        }
        $('#tabs').tabs('close',title);
    }
    function createFrame(url) {
        var s = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
        return s;
    }
</script>
</html>
