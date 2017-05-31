<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<s:head />

<script type="text/javascript">
	$(function() {
		if (top != window) {
			top.$._refresh("/login");
		}

		$("#login").click(function() {
			$("form")._ajaxSubmit({
				url : "doLogin",
				success : function(result) {
					if (result.data) {
						top.$._refresh("/index");
					} else {
						$._notify({
							message : "登陆失败!",
							className : "error"
						});
					}
				}
			});
		});
	});
</script>
</head>
<body>
	<form role="form" autocomplete="off">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="login-panel panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">请登录121</h3>
						</div>
						<div class="panel-body">
							<fieldset>
								<div class="form-group">
									<input class="form-control required" placeholder="用户名"
										name="username" autofocus maxlength="50" value="admin">
								</div>
								<div class="form-group">
									<input class="form-control required" placeholder="密码"
										name="password" type="password" maxlength="50" value="123456">
								</div>
								<div class="checkbox">
									<label><input name="remember" type="checkbox"
										value="true">记住我 </label>
								</div>
								<a id="login" href="javascript:void(0);"
									class="btn btn-lg btn-success btn-block">登录</a>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>