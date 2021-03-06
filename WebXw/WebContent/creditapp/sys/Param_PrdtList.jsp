<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ include file="/include/tld.jsp"%>
<% String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>列表</title>
	</head>
	<body class="body_bg">
	<s:form method="post" theme="simple" name="cms_form"
		action="ParamIntegAction_getPrdtList.action">
		<div class="right_bg">
			<div class="right_w">
				<div class="from_bg">
					<div class="right_v">
						<table width="100%" align="center" class="searchstyle">
							<tr>
								<td>
									<dhcc:formTag property="formsys0041" mode="query" />
								</td>
							</tr>
						</table>
						<div class="tools_372">
							<dhcc:button value="查询" action="查询" commit="true"
								typeclass="btn_80"></dhcc:button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<p class="p_blank">&nbsp;</p>
		
		<div class="right_bg">
			<div class="right_w">
				<div class="from_bg">
					<div class="right_v">
						<div class="tabCont">
							<div class="tabTitle">产品列表</div>
							<dhcc:button value="新增" action="新增" typeclass="t_ico_tj"
								onclick="PrdtBaseAction_input.action"  param="brNo=brNo"></dhcc:button>
						</div>
							
						<dhcc:tableTag paginate="prdtBaseList" property="tablesys0041"
									head="true" />
					</div>
				</div>
			</div>
		</div>
	</s:form>
	</body>
	<script type="text/javascript">
		//弹出页关闭后刷新父页面
	function show_dialog(href,reloadUrl){
		showDialog(href);
		if(reloadUrl){
			location.href = reloadUrl;
		}else{
			if(document.cms_form){
				document.cms_form.submit();
			}else{
				window.location.reload();
			}
		}
	}
	
	</script>
</html>