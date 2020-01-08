<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UserInfo Show</title>
</head>

<body class="gray-bg">
    <table>
    	<tr>
    		<th>姓名</th>
    		<th>密码</th>
        </tr>
        	<c:forEach items="${resoultList}" var="person">
        		<tr>
                    <td>${person.userName }</td>
                    <td>${person.password }</td>
                </tr>
            </c:forEach>
      </table>
</body>

</html>
