<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bootstrap table</title>
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="static/bootstrap-table/bootstrap-table.min.css" rel="stylesheet" media="screen">
<link href="static/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" media="screen">
<link href="static/bootstrap-select-1.13.14/css/bootstrap-select.min.css" rel="stylesheet" media="screen">
<link href="static/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" media="screen">

<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="static/bootstrap-table/bootstrap-table.min.js"></script>
<script src="static/bootstrap3-editable/js/bootstrap-editable.js"></script>
<script src="static/bootstrap3-editable/js/bootstrap-table-editable.min.js"></script>
<script src="static/bootstrapValidator/dist/js/bootstrapValidator.min.js"></script>
<script src="static/bootstrapValidator/dist/js/language/zh_CN.js"></script>
<script src="static/bootstrap-select-1.13.14/js/bootstrap-select.min.js"></script>
<script src="static/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="static/bootstrap-select-1.13.14/js/i18n/defaults-zh_CN.min.js"></script>
<script src="static/template/template-web.js"></script>
<script src="static/tableExport-bootstrap-table-master/tableExport.js"></script>
<script src="static/sheetjs-master/dist/xlsx.core.min.js"></script>
<script src="static/sheetjs-master/dist/xlsx.min.js"></script>
<script src="static/FileSaver.js-master/dist/FileSaver.min.js"></script>
<script src="static/js/html2canvas.js"></script>
<script src="static/tableExport-bootstrap-table-master/jspdf.min.js"></script>
<script src="static/tableExport-bootstrap-table-master/jspdf.plugin.autotable.js"></script>
<script src="static/layer/layer.js"></script>
<script src="static/My97DatePicker/WdatePicker.js"></script>
<script src="static/jquery.fileDownload/jquery.fileDownload.min.js"></script>
<script type="text/javascript" src="static/js/student/student.js">
	
</script>
</head>
<body>
	<ul class="breadcrumb">
		<li><a href="#"> Home </a></li>
		<li><a href="#"> 2021 </a></li>
		<li class="active">bootstrap-table</li>
	</ul>
	<!-- Bootstrap 折叠（Collapse）插件 -->
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> 查询条件 </a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<form id="searchForm" class="form-inline" role="form">
					<div class="form-group">
						<label for="name"> 姓名 </label>
						<input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">

						<label for="sex"> 性别 </label>
						<select class="selectpicker" data-live-search="true" id="sex" name="sex" title="请选择性别" >
							<option value=""></option>
							<option value="MALE">男</option>
							<option value="FEMALE">女</option>
						</select>

						<label for="age"> 年龄 </label>
						<input type="number" class="form-control" id="age" name="age" placeholder="请输入年龄">

						<label for="address"> 住址 </label>
						<input type="text" class="form-control" id="address" name="address" placeholder="请输入住址">

						<label for="birthday"> 生日 </label>
						<input data-date-format="yyyy-mm-dd" class="form-control Wdate" id="birthday"  onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" name="birthday" placeholder="请选择生日">

						<label for="email"> 邮箱 </label>
						<input type="email" class="form-control" id="email" name="email" placeholder="请输入邮箱">
					</div>
					<div class="form-group">
						<button id="searchBtn" type="button" class="btn btn-primary" data-loading-text="Loading...">
							<span class="glyphicon glyphicon-search" aria-hidden="true"> </span> 查询
						</button>
						<button id="resetSearch" type="button" class="btn btn-default">重置</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 按钮工具栏 -->
	<div id="toolbar" class="btn-toolbar" role="toolbar">
		<div class="btn-group">
			<button type="button" class="btn btn-default" id="addBtn">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"> </span> 新增
			</button>
			<button type="button" class="btn btn-default" id="modifyBtn">
				<span class="glyphicon glyphicon-pencil" aria-hidden="true"> </span> 修改
			</button>
			<button type="button" class="btn btn-default" id="delBtn">
				<span class="glyphicon glyphicon-remove" aria-hidden="true"> </span> 删除
			</button>
			<button type="button" class="btn btn-default" id="exportBtn">
				<span class="glyphicon glyphicon-remove" aria-hidden="true"> </span> 导出
			</button>
		</div>
	</div>
	
	<table id="studentTb" data-toggle="table">
	</table>
	
	<script id="studentTemplate" type="text/html">
	<div class="modal-body">
		<form class="form-horizontal" role="form" id="studentForm">
			<input type="hidden" name="id" value="{{id}}" />
			<div class="form-group">
				<label for="firstname" class="col-sm-2 control-label">姓名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control required-validate" id="firstname" name="name" value="{{name}}" placeholder="请输入姓名" required>
				</div>
			</div>
			<div class="form-group">
				<label for="firstname" class="col-sm-2 control-label">性别</label>
				<div class="col-sm-10">
					<label class="radio-inline"> <input type="radio" name="sex" value="F" {{if sex=='F'}}checked{{/if}}>男
					</label> <label class="radio-inline"> <input type="radio" name="sex" value="M" {{if sex=='M'}}checked{{/if}}>女
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="lastname" class="col-sm-2 control-label">年龄</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="age_id" name="age" value="{{age}}" placeholder="请输入年龄">
				</div>
			</div>
			<div class="form-group">
				<label for="lastname" class="col-sm-2 control-label">生日</label>
				<div class="col-sm-10">
					<input class="form-control Wdate" id="birthday_id" name="birthday" value="{{birthday}}" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" placeholder="请选择生日">
				</div>
			</div>
			<div class="form-group">
				<label for="lastname" class="col-sm-2 control-label">邮箱</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="email_id" name="email" value="{{email}}" placeholder="请输入邮箱">
				</div>
			</div>
			<div class="form-group">
				<label for="lastname" class="col-sm-2 control-label">住址</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="address_id" name="address" value="{{address}}" placeholder="请输入住址">
				</div>
			</div>
		</form>
	</div>
	{{datepicker}}
	</script>
</body>
</html>
