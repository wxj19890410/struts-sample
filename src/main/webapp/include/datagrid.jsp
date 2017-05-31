<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<s:if test="Globals.DEV_MODE">
	<link href="<%=request.getContextPath()%>/css/jquery.treegrid.css"
		rel="stylesheet" type="text/css"></link>
	<script src="<%=request.getContextPath()%>/js/jquery.treegrid.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery.treegrid.bootstrap3.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.bootpag.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/datagrid.js"
		type="text/javascript"></script>
</s:if>
<s:else>
	<link href="<%=request.getContextPath()%>/css/jquery.treegrid.css"
		rel="stylesheet" type="text/css"></link>
	<script src="<%=request.getContextPath()%>/js/jquery.treegrid.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery.treegrid.bootstrap3.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.bootpag.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/datagrid.js"
		type="text/javascript"></script>
</s:else>
