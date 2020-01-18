<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户注册页面</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="http://www.jeasyui.net/Public/js/easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css" />
    <link href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="http://www.jeasyui.net/Public/js/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
</head>
<body>
<div id="loginWindow" class="easyui-window" title="注册窗口" data-options="iconCls:'icon-vixtel'"
     style="width:320px;height:320px;padding:5px;background: #fafafa;">
    <br>
    <div border="false" style=" padding-left:50px; border:0px solid #ccc;">
        <form>
            <table>
                <tr>
                    <td>
                        <input class="easyui-textbox" id="username" style="width:100%;height:30px;padding:12px"
                               data-options="prompt:'用户名',iconWidth:38"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="easyui-textbox" type="password" id="password"
                               style="width:100%;height:30px;padding:12px" data-options="prompt:'密码',iconWidth:38"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="easyui-textbox" id="realname" style="width:100%;height:30px;padding:12px"
                               data-options="prompt:'姓名',iconWidth:38"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="easyui-textbox"  id="business"
                               style="width:100%;height:30px;padding:12px" data-options="prompt:'职业',iconWidth:38"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="easyui-numberbox"  id="eamil"
                               style="width:100%;height:30px;padding:12px" data-options="prompt:'邮箱',iconWidth:38"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div border="false" style="text-align:left;height:30px;line-height:30px; margin-top:6px;">
        <div style="padding-left:57px;">
            <a class="easyui-linkbutton"  style="width:90px;" href="javascript:login()" >返回</a>
            <a class="easyui-linkbutton"  style="width:90px;" href="javascript:regist()" >注册</a>
        </div>
    </div>
</div>
<script type="text/javascript">
    function regist(){
        if($.trim($('#realname').val())==''||$.trim($('#username').val())==''||$.trim($('#business').val())==''
            ||$.trim($('#password').val())==''||$.trim($('#eamil').val())==''){
            $.messager.alert('提示', '请输入全部信息');
        }else{
            $.ajax({
                url:'<%=basePath%>/login.do?mothod=beginRegiest',
                dataType:'text',
                type:'post',
                data:{username:$.trim($('#username').val()),
                    realname:$.trim($('#realname').val()),
                    business:$.trim($('#business').val()),
                    eamil:$.trim($('#eamil').val()),
                    password:$.trim($('#password').val())},
                success:function(result){
                    if(result == 'ok'){
                        $.messager.alert('提示', '注册成功');
                        window.location.href = "<%=basePath%>/login.do?mothod=enterLoginPage";
                    }
                    if(result == 'error'){
                        $.messager.alert('提示', '系统异常请稍后再试...');
                    }
                    if(result == '02'){
                        $.messager.alert('提示', '邮箱已注册，请重新填写或直接登录');
                    }
                    if(result == '01'){
                        $.messager.alert('提示', '用户名已存在，请重新填写或直接登录');
                    }
                    if(result == '00'){
                        $.messager.alert('提示', '请输入全部信息');
                    }
                }
            })
        }
    }
    function login(){
        return window.location.href = "<%=basePath%>/login.do?mothod=enterLoginPage";
    }
</script>
</body>
</html>
