<%@ page contentType="text/html;charset=utf-8" language="java" errorPage=""%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<title>上海市工程管理学会</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta content="width=device-width,target-densitydpi=high-dpi,user-scalable=0" name="viewport">
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<meta name="Keywords" content="上海市工程管理学会,工程管理学会,工程学会,工程管理" />
	<meta name="author" content="袁胜超" />
	<meta name="description" content="上海市工程管理学会是上海市工程管理领域学者和企业工作者的学术性群众团体，是依法成立的社团法人，是发展上海市工程管理事业，加强工程管理科技人才培养的一支重要社会力量" />
	<link rel='icon' href='<%=path %>/images/logo.ico' type='image/x-ico' />
	<link rel="stylesheet" href="<%=path %>/css/front/foot.css" />
</head>
<style type="text/css">
	.copy{
		font-size: 26px;
		display: inline-block;
		padding: 5px;
		font-weight: bold;
		vertical-align: middle;
	}
</style>
<body>
	<div id="foot">
		<div class="foot_num2">
			<h3>相关连接:</h3>
			<ul>
				<c:forEach items="${linkhrefs }" var="linkhref">
				<li><a href="${linkhref.linkhref_url }" target="_blank"> ${linkhref.linkhref_name } </a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="foot_num3">
			<p style="margin-top: 15px;">地址：${address } 邮编：${emailCode } 电话：${phone } 版权所有 复制必究</p>
			<p>版权所有<span class="copy">&copy;</span>2016 上海理工大学 沪ICP备08108292号-5 技术支持:<a href="http://fu.wustlz.com/" target="_blank" style="border:none;">For You 工作室</a></p>
		</div>
	</div>
</body>
</html>