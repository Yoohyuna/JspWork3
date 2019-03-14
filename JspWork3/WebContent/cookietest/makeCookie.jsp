<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<%
   //쿠키이름,저장할값
    String cookiename="mycookie";
    Cookie c=new Cookie(cookiename,"apple");//쿠키이름,쿠키값
    //쿠키값을 내컴퓨터에 전송하기전에 설정
    c.setMaxAge(60*2);//2분쿠키 저장 유지 시간(60*60*24*365)
    c.setValue("Melone");//중간에 쿠키값을 변경->setValue(~)
    response.addCookie(c);//addCookie(전송할 쿠키객체명);
%>
<body>
  <h1>쿠키를 생성하는 예제</h1>
  <p>
  쿠키가 생성되었습니다.<br>
  쿠키의 내용은 <a href="useCookie.jsp">여기에서 확인</a>
</body>
</html>

