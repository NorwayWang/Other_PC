<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户信息展示</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="http://www.jeasyui.net/Public/js/easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css" />
    <link href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="http://www.jeasyui.net/Public/js/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function (){
            $('#tab2').datagrid({
                url:"<%=basePath %>/userInfo.do?method=getPaperInfo&studentPage=1",
                fitColumns:true,
                singleSelect:true,
                pagination:true,
                pageSize:10,
                pageList:[10,20,40],
                rownumbers:true,//行号
                columns:[[
                    {field:'userName',title:'用户名',halign:'center',align:'center',width:20},
                    {field:'password',title:'用户密码',halign:'center',align:'center',width:20},
                    {field:'realName',title:'用户真实姓名',halign:'center',align:'center',width:20},
                    {field:'business',title:'职业',halign:'center',align:'center',width:20},
                    {field:'email',title:'注册邮箱',halign:'center',align:'center',width:20},
                    {field:'addDate',title:'注册时间',halign:'center',align:'center',width:20},
                    {field:'updateDate',title:'修改时间',halign:'center',align:'center',width:20},
                    {field:'state',title:'状态',halign:'center',align:'center',width:20}
                ]],
            })
        })
        // function formatter1(value,row){
        //     return "<a href=javascript:lookPaper('"+row.paperID+"','"+row.paperName+"')>浏览试卷</a>";
        // }
        <%--function lookPaper(id,name){--%>
        <%--    window.open("<%=basePath %>student.do?method=enterTestPage&trueName=loopPaper&paperId="+id+"&paperName="+encodeURI(encodeURI(name)))--%>
        <%--}--%>
        function search(){
            var type = $.trim($('#byUser').val());
            var mainContent = $.trim($('#paperName').val()) ;
            $('#tab2').datagrid({
                url:"<%=basePath %>student.do?method=getStudentScoreInfo&byUser="+encodeURI(encodeURI(type))+"&paperName="+encodeURI(encodeURI(mainContent)),
                type:'post',
                fitColumns:true,
                singleSelect:true,
                pagination:true,
                pageSize:10,
                pageList:[10,20,40],
                rownumbers:true,//行号
                columns:[[
                    {field:'userName',title:'用户名',halign:'center',align:'center',width:20},
                    {field:'password',title:'用户密码',halign:'center',align:'center',width:20},
                    {field:'realName',title:'用户真实姓名',halign:'center',align:'center',width:20},
                    {field:'business',title:'职业',halign:'center',align:'center',width:20},
                    {field:'email',title:'注册邮箱',halign:'center',align:'center',width:20},
                    {field:'addDate',title:'注册时间',halign:'center',align:'center',width:20},
                    {field:'updateDate',title:'修改时间',halign:'center',align:'center',width:20},
                    {field:'state',title:'状态',halign:'center',align:'center',width:20,formatter:formatter1}
                ]],
            })
        }
    </script>
    <style type="text/css">
        .abody{
            position: absolute;
            left: 0;top: 0;bottom: 0;right: 0;
        }
        a{
            text-decoration:none;
        }
        .panel_title_1 div{
            font-size:15px;
            text-align:center;
            color:red;
            font-weigh:10px;
            padding:1px;
        }

        .panel_text div{
            vertical-align:middle;
            line-height:100px;
            text-align:center;
        }
        .combo-panel {
            height:60px;
            overflow: auto;
        }
    </style>
</head>
<body class="abody">
<div class="easyui-panel" title="已注册用户信息"  data-options="headerCls:'panel_title_1',collapsible:false">
    <div style="padding:5px;line-height: 30px">
        用户名 :<input type="text"  id="paperName" class="easyui-textbox" value="" size=20 data-options="prompt:'请输入用户名'"/>&nbsp;
        注册邮箱 :<input type="text"  id="byUser" class="easyui-textbox" value="" size=20 data-options="prompt:'请输入注册邮箱'"/>&nbsp;
        <div style="float:right;">
            <a href="javascript:search()" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
        </div>
    </div>
    <div>
        <table id="tab2" width="100%" style="padding:5px;"></table>
    </div>
</div>
</body>
</html>
