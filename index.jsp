<%@ page contentType="text/html;charset=utf-8" language="java" errorPage=""%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="width=device-width,target-densitydpi=high-dpi,user-scalable=0" name="viewport">
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta name="Keywords" content="上海市工程管理学会,工程管理学会,工程学会,工程管理" />
<meta name="author" content="袁胜超" />
<meta name="description" content="上海市工程管理学会是上海市工程管理领域学者和企业工作者的学术性群众团体，是依法成立的社团法人，是发展上海市工程管理事业，加强工程管理科技人才培养的一支重要社会力量" />
<link rel='icon' href='<%=path %>/images/logo.ico' type='image/x-ico' />
<meta name="baidu-site-verification" content="cU2VXAIvoX" />
<link rel="stylesheet" href="<%=path %>/css/front/common.css" />
<link rel="stylesheet" href="<%=path %>/css/front/index.css" />
<title>上海市工程管理学会</title>
</head>
<body>
	<input type="hidden" value="0" class="nav_active" />
	<div id="talkaboutnum1">
		<div class="fl">
			<h4>在线咨询</h4>
			<div class="fl_o">
				<dl class="fl_o_o">
					<dt>
						<a rel="nofollow" target="_blank"
							href="tencent://message/?uin=3401385066&Site=上海市工程管理学会&Menu=yes">
							<i class="ui-qq"></i>
						</a>
					</dt>
					<dd>QQ咨询</dd>
				</dl>
				<dl class="fl_o_o">
					<dt>
						<i class="ui-wechat"></i>
					</dt>
					<dd>微信扫一扫</dd>
				</dl>
			</div>
			<i class="bottom"></i>
		</div>
	</div>

	<jsp:include page="head.jsp" />
	<!-- 中间部分 -->
	<div id="index_content">
		<div class="index_left">
			<div class="index_leftnum1">
				<ul>
					<c:forEach items="${listImg }" var="imgNews">
						<li>
							<span class="beforespan">&lt;</span>
							<a href="<%=path %>/news/${imgNews[2]}"><img src="<%=path %>/upload/news/images/${imgNews[1] }" alt="" /></a>
							<span class="next">&gt;</span>
						</li>
					</c:forEach>
				</ul>
				<ol>
					<li class="olActive">1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ol>
			</div>
			<div class="index_leftnum2">
				<div class="index_leftnum2_left">
					<h4 style="margin-top: 16px;">
<!-- 					技能培训通知  -->
						${trainInfoName }<a href="<%=path%>/about/${trainInfoID}">更多>></a>
					</h4>
					<ul><c:if test="${trainID>0}">
						<div class="topSelf">
							<h2>${trainTitle }</h2>
							<p>
								<span> ${train } ... <a href="<%=path %>/news/${trainID}">查看详细>></a>
								</span>
							</p>
						</div>
					</c:if>
						<c:forEach items="${trainInfo }" var="menuinfo">
							<li><em></em> <a href="<%=path %>/news/${menuinfo[0]}">${menuinfo[1]}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="index_leftnum2_right index_leftnum2_eclipse">
					<h4>
<!-- 						技能培训报名 -->
						${trainApplyName } <a href="<%=path%>/about/${trainApplyID}">更多>></a>
					</h4>
					<ul>
						<c:forEach items="${trainApply }" var="menuinfo">
						<li><a href="<%=path %>/tinfo/${menuinfo[0]}"> <strong>${menuinfo[1] }</strong> <span>${menuinfo[2] }</span></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="clearfloat"></div>
			<div class="index_leftnum3">
				<h4>
<!-- 					项目招标 -->
					${programBitInfoName } <a href="<%=path%>/program/${programBitInfoID}">更多>></a>
				</h4>
				<div class="leftnum3_right">
					<ul>
						<c:forEach items="${programBitInfo }" var="program">
							<li><em></em> <a href="<%=path %>/pnews/${program[0]}"> <strong>${program[1]}</strong>
								<div>
									<span>${program[2]}</span> <span>${program[3]}</span> <span>${program[4]}</span>
								</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="index_leftnum3 inde_leftnum4">
				<h4>
<!-- 					项目承包 -->
					${programContractInfoName } <a href="<%=path%>/program/${programContractInfoID}">更多>></a>
				</h4>
				<div class="leftnum3_right">
					<ul>
						<c:forEach items="${programContractInfo }" var="program">
							<li><em></em> <a href="<%=path %>/pnews/${program[0]}"> <strong>${program[1]}</strong>
								<div>
									<span>${program[2]}</span> <span>${program[3]}</span>
								</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div class="index_right">
			<div class="index_leftnum2_left index_rightnum1">
				<h4>
<!-- 					学会动态 -->
					${tendencyName } <a href="<%=path%>/about/${tendencyID}">更多>></a>
				</h4>
				<ul>
					<div class="topSelf">
						<h2>${tendenInfoTitle }</h2>
						<p>
							<span> ${tendenInfo }... <a href="<%=path %>/news/${tendenInfoID}">查看详细>></a>
							</span>
						</p>
					</div>
					<c:forEach items="${tendency }" var="menuinfo">
						<li><em></em> <a href="<%=path %>/news/${menuinfo[0]}">${menuinfo[1]}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="index_leftnum2_left index_rightnum2 index_rightnum1">
				<img src="<%=path %>/images/tu3.png" alt="ontent" />
				<h4>
<!-- 					国内会议 -->
					${meetingName } <a href="<%=path%>/about/${meetingID}">更多>></a>
				</h4>
				<ul>
					<c:forEach items="${meeting }" var="menuinfo">
						<li><em></em> <a href="<%=path %>/news/${menuinfo[0]}">${menuinfo[1]}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="index_leftnum2_left index_rightnum3 index_rightnum1" style="height: 494px;">
				<img src="<%=path %>/images/tu4.png" alt="常见问题" />
				<h4>
<!-- 					国际会议 -->
					${meetingInternationalName } <a href="<%=path%>/about/${meetingInternationalID}">更多>></a>
				</h4>
				<ul>
					<c:forEach items="${meetingInternational }" var="menuinfo">
						<li><em></em> <a href="<%=path %>/news/${menuinfo[0]}">${menuinfo[1]}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="clearfloat"></div>
	</div>
	<jsp:include page="foot.jsp" />
	<script src="<%=path %>/js/jquery-1.8.3.min.js"></script>
	<script src="<%=path %>/js/front/index.js"></script>
</body>
</html>