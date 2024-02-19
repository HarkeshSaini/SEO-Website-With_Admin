<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="code" value="${langCode.toLowerCase()}" scope="session"/>
<c:set var="lang" value="${fn:replace(code, 'en', '')}" scope="session"/>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="${code}">
   <head>
<head>
<meta http-equiv="refresh" content="0;url=/${lang}" />
</head>
</html>