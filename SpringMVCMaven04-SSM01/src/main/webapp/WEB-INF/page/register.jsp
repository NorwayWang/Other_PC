<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>INSPINIA | Register</title>
    <style type="text/css">
    h2 {font-size: 24px;}
    h3 {font-size: 16px;}
    .middle-box{text-align:center}
    .logo-name {
        color: #e6e6e6;
        font-size: 120px;
        font-weight: 800;
        letter-spacing: -10px;
        margin-bottom: 0px;
    }
    /* BACKGROUNDS */
    .gray-bg {background-color: #f3f3f4;}
    </style>
</head>

<body class="gray-bg">
    <div class="middle-box">
        <div>
            <div>
                <h2 class="logo-name">YX</h2>
            </div>
            <h3>欢迎注册</h3>
            <form class="m-t" role="form" action="register.html" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="userName" name="userName" required=""/>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="password" name="password" required=""/>
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="email" name="email" required=""/>
                </div>
                <div class="form-group">
                        <div class="checkbox i-checks"><label> <input type="checkbox"/><i></i> 记住账号密码 </label></div>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">注  册</button>

                <p class="text-muted text-center"><small>已经注册 ?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="login" href="login.html">登  录</a>
            </form>
        </div>
    </div>
</body>

</html>
