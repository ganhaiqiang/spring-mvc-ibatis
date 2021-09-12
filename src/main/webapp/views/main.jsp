<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bootstrap table例子</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<h1>Hello, world!</h1>
			</div>
			<div class="span10">
				<!-- 标题 -->
				<h1>
					我是标题1 h1. <small>我是副标题1 h1</small>
				</h1>
				<h2>
					我是标题2 h2. <small>我是副标题2 h2</small>
				</h2>
				<h3>
					我是标题3 h3. <small>我是副标题3 h3</small>
				</h3>
				<h4>
					我是标题4 h4. <small>我是副标题4 h4</small>
				</h4>
				<h5>
					我是标题5 h5. <small>我是副标题5 h5</small>
				</h5>
				<h6>
					我是标题6 h6. <small>我是副标题6 h6</small>
				</h6>

				<!-- 引导主体副本 -->
				<h2>引导主体副本</h2>
				<p class="lead">这是一个演示引导主体副本用法的实例。这是一个演示引导主体副本用法的实例。这是一个演示引导主体副本用法的实例。这是一个演示引导主体副本用法的实例。这是一个演示引导主体副本用法的实例。这是一个演示引导主体副本用法的实例。这是一个演示引导主体副本用法的实例。这是一个演示引导主体副本用法的实例。</p>

				<!-- 强调 -->
				<small>本行内容是在标签内</small><br> <strong>本行内容是在标签内</strong><br> <em>本行内容是在标签内，并呈现为斜体</em><br>
				<p class="text-left">向左对齐文本</p>
				<p class="text-center">居中对齐文本</p>
				<p class="text-right">向右对齐文本</p>
				<p class="text-muted">本行内容是减弱的</p>
				<p class="text-primary">本行内容带有一个 primary class</p>
				<p class="text-success">本行内容带有一个 success class</p>
				<p class="text-info">本行内容带有一个 info class</p>
				<p class="text-warning">本行内容带有一个 warning class</p>
				<p class="text-danger">本行内容带有一个 danger class</p>

				<!-- 缩写 -->
				<abbr title="World Wide Web">WWW</abbr><br> <abbr title="Real Simple Syndication" class="initialism">RSS</abbr>

				<!-- 地址（Address） -->
				<address>
					<strong>Some Company, Inc.</strong><br> 007 street<br> Some City, State XXXXX<br> <abbr title="Phone">P:</abbr> (123) 456-7890
				</address>
				<address>
					<strong>Full Name</strong><br> <a href="mailto:#">mailto@somedomain.com</a>
				</address>
				<!-- 引用（Blockquote） -->
				<blockquote>
					<p>这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。</p>
				</blockquote>
				<blockquote>
					这是一个带有源标题的引用。 <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
				</blockquote>
				<blockquote class="pull-right">
					这是一个向右对齐的引用。 <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
				</blockquote>

				<!-- 列表 -->
				<h4>有序列表</h4>
				<ol>
					<li>Item 1</li>
					<li>Item 2</li>
					<li>Item 3</li>
					<li>Item 4</li>
				</ol>
				<h4>无序列表</h4>
				<ul>
					<li>Item 1</li>
					<li>Item 2</li>
					<li>Item 3</li>
					<li>Item 4</li>
				</ul>
				<h4>未定义样式列表</h4>
				<ul class="list-unstyled">
					<li>Item 1</li>
					<li>Item 2</li>
					<li>Item 3</li>
					<li>Item 4</li>
				</ul>
				<h4>内联列表</h4>
				<ul class="list-inline">
					<li>Item 1</li>
					<li>Item 2</li>
					<li>Item 3</li>
					<li>Item 4</li>
				</ul>
				<h4>定义列表</h4>
				<dl>
					<dt>Description 1</dt>
					<dd>Item 1</dd>
					<dt>Description 2</dt>
					<dd>Item 2</dd>
				</dl>
				<h4>水平的定义列表</h4>
				<dl class="dl-horizontal">
					<dt>Description 1</dt>
					<dd>Item 1</dd>
					<dt>Description 2</dt>
					<dd>Item 2</dd>
				</dl>

				<!-- 代码显示 -->
				<p>
					<code>&lt;input type="text" value="测试" /&gt;</code>
					作为内联元素被包围。
				</p>
				<p>如果需要把代码显示为一个独立的块元素，请使用 &lt;pre&gt; 标签：</p>
				<pre class="pre-scrollable">
				    &lt;article&gt;
				        &lt;h1&gt;Article Heading&lt;/h1&gt;
				    &lt;/article&gt;
				    &lt;article&gt;
				        &lt;h1&gt;Article Heading&lt;/h1&gt;
				    &lt;/article&gt;
				    &lt;article&gt;
				        &lt;h1&gt;Article Heading&lt;/h1&gt;
				    &lt;/article&gt;
				</pre>

				<!-- 基本的表格 -->
				<table class="table">
					<caption>基本的表格布局</caption>
					<thead>
						<tr>
							<th>名称</th>
							<th>城市</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tanmay</td>
							<td>Bangalore</td>
						</tr>
						<tr>
							<td>Sachin</td>
							<td>Mumbai</td>
						</tr>
					</tbody>
				</table>

				<!-- 条纹表格 -->
				<table class="table table-striped">
					<caption>条纹表格布局</caption>
					<thead>
						<tr>
							<th>名称</th>
							<th>城市</th>
							<th>邮编</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tanmay</td>
							<td>Bangalore</td>
							<td>560001</td>
						</tr>
						<tr>
							<td>Sachin</td>
							<td>Mumbai</td>
							<td>400003</td>
						</tr>
						<tr>
							<td>Uma</td>
							<td>Pune</td>
							<td>411027</td>
						</tr>
					</tbody>
				</table>

				<!-- 边框表格 -->
				<table class="table table-bordered">
					<caption>边框表格布局</caption>
					<thead>
						<tr>
							<th>名称</th>
							<th>城市</th>
							<th>邮编</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tanmay</td>
							<td>Bangalore</td>
							<td>560001</td>
						</tr>
						<tr>
							<td>Sachin</td>
							<td>Mumbai</td>
							<td>400003</td>
						</tr>
						<tr>
							<td>Uma</td>
							<td>Pune</td>
							<td>411027</td>
						</tr>
					</tbody>
				</table>

				<!-- 悬停表格，通过添加 .table-hover class，当指针悬停在行上时会出现浅灰色背景 -->
				<table class="table table-hover">
					<caption>悬停表格布局</caption>
					<thead>
						<tr>
							<th>名称</th>
							<th>城市</th>
							<th>邮编</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tanmay</td>
							<td>Bangalore</td>
							<td>560001</td>
						</tr>
						<tr>
							<td>Sachin</td>
							<td>Mumbai</td>
							<td>400003</td>
						</tr>
						<tr>
							<td>Uma</td>
							<td>Pune</td>
							<td>411027</td>
						</tr>
					</tbody>
				</table>

				<!-- 精简表格，通过添加 .table-condensed class，行内边距（padding）被切为两半，以便让表看起来更紧凑，如下面的实例所示。这在想让信息看起来更紧凑时非常有用 -->
				<table class="table table-condensed">
					<caption>精简表格布局</caption>
					<thead>
						<tr>
							<th>名称</th>
							<th>城市</th>
							<th>邮编</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tanmay</td>
							<td>Bangalore</td>
							<td>560001</td>
						</tr>
						<tr>
							<td>Sachin</td>
							<td>Mumbai</td>
							<td>400003</td>
						</tr>
						<tr>
							<td>Uma</td>
							<td>Pune</td>
							<td>411027</td>
						</tr>
					</tbody>
				</table>

				<!-- 上下文类,下表中所列出的上下文类允许您改变表格行或单个单元格的背景颜色。 -->
				<table class="table">
					<caption>上下文表格布局</caption>
					<thead>
						<tr>
							<th>产品</th>
							<th>付款日期</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody>
						<tr class="active">
							<td>产品1</td>
							<td>23/11/2013</td>
							<td>待发货</td>
						</tr>
						<tr class="success">
							<td>产品2</td>
							<td>10/11/2013</td>
							<td>发货中</td>
						</tr>
						<tr class="warning">
							<td>产品3</td>
							<td>20/10/2013</td>
							<td>待确认</td>
						</tr>
						<tr class="error">
							<td>产品4</td>
							<td>20/10/2013</td>
							<td>已退货</td>
						</tr>
					</tbody>
				</table>

				<!-- 响应式表格，通过把任意的 .table 包在 .table-responsive class 内，您可以让表格水平滚动以适应小型设备（小于 768px）。当在大于 768px 宽的大型设备上查看时，您将看不到任何的差别。 -->
				<div class="table-responsive">
					<table class="table">
						<caption>响应式表格布局</caption>
						<thead>
							<tr>
								<th>产品</th>
								<th>付款日期</th>
								<th>状态</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>产品1</td>
								<td>23/11/2013</td>
								<td>待发货</td>
							</tr>
							<tr>
								<td>产品2</td>
								<td>10/11/2013</td>
								<td>发货中</td>
							</tr>
							<tr>
								<td>产品3</td>
								<td>20/10/2013</td>
								<td>待确认</td>
							</tr>
							<tr>
								<td>产品4</td>
								<td>20/10/2013</td>
								<td>已退货</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- 垂直或基本表单 -->
				<form role="form">
					<div class="form-group">
						<label for="name">名称</label>
						<input type="text" class="form-control" id="name" placeholder="请输入名称">
					</div>
					<div class="form-group">
						<label for="inputfile">文件输入</label>
						<input type="file" id="inputfile">
						<p class="help-block">这里是块级帮助文本的实例。</p>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox">请打勾
						</label>
					</div>
					<button type="submit" class="btn btn-default">提交</button>
				</form>

				<!-- 内联表单，如果需要创建一个表单，它的所有元素是内联的，向左对齐的，标签是并排的，请向 <form> 标签添加 class .form-inline。 -->
				<form class="form-inline" role="form">
					<div class="form-group">
						<label class="sr-only" for="name1">名称</label>
						<input type="text" class="form-control" id="name1" placeholder="请输入名称">
					</div>
					<div class="form-group">
						<label class="sr-only" for="inputfile1">文件输入</label>
						<input type="file" id="inputfile1">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox">请打勾
						</label>
					</div>
					<button type="submit" class="btn btn-default">提交</button>
				</form>

				<!-- 水平表单 -->
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">名字</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="firstname" placeholder="请输入名字">
						</div>
					</div>
					<div class="form-group">
						<label for="lastname" class="col-sm-2 control-label">姓</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="lastname" placeholder="请输入姓">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox">请记住我
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">登录</button>
						</div>
					</div>
				</form>

				<!-- 支持的表单控件 -->
				<!-- 最常见的表单文本字段是输入框 input。用户可以在其中输入大多数必要的表单数据。Bootstrap 提供了对所有原生的 HTML5 的 input 类型的支持，包括：text、password、datetime、datetime-local、date、month、time、week、number、email、url、search、tel 和 color。适当的 type 声明是必需的，这样才能让 input 获得完整的样式。 -->
				<form role="form">
					<div class="form-group">
						<label for="name">标签</label>
						<input type="email" class="form-control" placeholder="文本输入">
					</div>
				</form>

				<!-- 文本框 -->
				<form role="form">
					<div class="form-group">
						<label for="name">文本框</label>
						<textarea class="form-control" rows="3"></textarea>
					</div>
				</form>

				<!-- 复选框（Checkbox）和单选框（Radio） -->
				<!-- 对一系列复选框和单选框使用 .checkbox-inline 或 .radio-inline class，控制它们显示在同一行上 -->
				<label for="name">默认的复选框和单选按钮的实例</label>
				<div class="checkbox">
					<label><input type="checkbox" value="">选项 1</label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" value="">选项 2</label>
				</div>
				<div class="radio">
					<label> <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 选项 1
					</label>
				</div>
				<div class="radio">
					<label> <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">选项 2 - 选择它将会取消选择选项 1
					</label>
				</div>
				<label for="name">内联的复选框和单选按钮的实例</label>
				<div>
					<label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox1" value="option1"> 选项 1
					</label> <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2" value="option2"> 选项 2
					</label> <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox3" value="option3"> 选项 3
					</label> <label class="radio-inline"> <input type="radio" name="optionsRadiosinline" id="optionsRadios3" value="option1" checked> 选项 1
					</label> <label class="radio-inline"> <input type="radio" name="optionsRadiosinline" id="optionsRadios4" value="option2"> 选项 2
					</label>
				</div>

				<!-- 选择框（Select） -->
				<form role="form">
					<div class="form-group">
						<label for="name">选择列表</label>
						<select class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
						<label for="name">可多选的选择列表</label>
						<select multiple class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
				</form>

				<!-- 静态控件，当您需要在一个水平表单内的表单标签后放置纯文本时，请在 <p> 上使用 class .form-control-static。 -->
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<p class="form-control-static">email@example.com</p>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword" placeholder="请输入密码">
						</div>
					</div>
				</form>

				<!-- 验证状态，Bootstrap 包含了错误、警告和成功消息的验证样式。只需要对父元素简单地添加适当的 class（.has-warning、 .has-error 或 .has-success）即可使用验证状态。 -->
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">聚焦</label>
						<div class="col-sm-10">
							<input class="form-control" id="focusedInput" type="text" value="该输入框获得焦点...">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">禁用</label>
						<div class="col-sm-10">
							<input class="form-control" id="disabledInput" type="text" placeholder="该输入框禁止输入..." disabled>
						</div>
					</div>
					<fieldset disabled>
						<div class="form-group">
							<label for="disabledTextInput" class="col-sm-2 control-label">禁用输入（Fieldset disabled）</label>
							<div class="col-sm-10">
								<input type="text" id="disabledTextInput" class="form-control" placeholder="禁止输入">
							</div>
						</div>
						<div class="form-group">
							<label for="disabledSelect" class="col-sm-2 control-label">禁用选择菜单（Fieldset disabled）</label>
							<div class="col-sm-10">
								<select id="disabledSelect" class="form-control">
									<option>禁止选择</option>
								</select>
							</div>
						</div>
					</fieldset>
					<div class="form-group has-success">
						<label class="col-sm-2 control-label" for="inputSuccess">输入成功</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputSuccess">
						</div>
					</div>
					<div class="form-group has-warning">
						<label class="col-sm-2 control-label" for="inputWarning">输入警告</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputWarning">
						</div>
					</div>
					<div class="form-group has-error">
						<label class="col-sm-2 control-label" for="inputError">输入错误</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputError">
						</div>
					</div>
				</form>

				<!-- 表单控件大小，您可以分别使用 class .input-lg 和 .col-lg-* 来设置表单的高度和宽度 -->
				<form role="form">
					<div class="form-group">
						<input class="form-control input-lg" type="text" placeholder=".input-lg">
					</div>
					<div class="form-group">
						<input class="form-control" type="text" placeholder="默认输入">
					</div>
					<div class="form-group">
						<input class="form-control input-sm" type="text" placeholder=".input-sm">
					</div>
					<div class="form-group"></div>
					<div class="form-group">
						<select class="form-control input-lg">
							<option value="">.input-lg</option>
						</select>
					</div>
					<div class="form-group">
						<select class="form-control">
							<option value="">默认选择</option>
						</select>
					</div>
					<div class="form-group">
						<select class="form-control input-sm">
							<option value="">.input-sm</option>
						</select>
					</div>
					<div class="row">
						<div class="col-lg-2">
							<input type="text" class="form-control" placeholder=".col-lg-2">
						</div>
						<div class="col-lg-3">
							<input type="text" class="form-control" placeholder=".col-lg-3">
						</div>
						<div class="col-lg-4">
							<input type="text" class="form-control" placeholder=".col-lg-4">
						</div>
					</div>
				</form>

				<!-- 表单帮助文本 -->
				<form role="form">
					<span>帮助文本实例</span>
					<input class="form-control" type="text" placeholder="">
					<span class="help-block">一个较长的帮助文本块，超过一行， 需要扩展到下一行。本实例中的帮助文本总共有两行。</span>
				</form>

				<!-- bootstrap按钮 -->
				<!-- 标准的按钮 -->
				<button type="button" class="btn btn-default">默认按钮</button>
				<!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
				<button type="button" class="btn btn-primary">原始按钮</button>
				<!-- 表示一个成功的或积极的动作 -->
				<button type="button" class="btn btn-success">成功按钮</button>
				<!-- 信息警告消息的上下文按钮 -->
				<button type="button" class="btn btn-info">信息按钮</button>
				<!-- 表示应谨慎采取的动作 -->
				<button type="button" class="btn btn-warning">警告按钮</button>
				<!-- 表示一个危险的或潜在的负面动作 -->
				<button type="button" class="btn btn-danger">危险按钮</button>
				<!-- 并不强调是一个按钮，看起来像一个链接，但同时保持按钮的行为 -->
				<button type="button" class="btn btn-link">链接按钮</button>
				<br />
				<!-- 按钮的大小 -->
				<p>
					<button type="button" class="btn btn-primary btn-lg">大的原始按钮</button>
					<button type="button" class="btn btn-default btn-lg">大的按钮</button>
				</p>
				<p>
					<button type="button" class="btn btn-primary">默认大小的原始按钮</button>
					<button type="button" class="btn btn-default">默认大小的按钮</button>
				</p>
				<p>
					<button type="button" class="btn btn-primary btn-sm">小的原始按钮</button>
					<button type="button" class="btn btn-default btn-sm">小的按钮</button>
				</p>
				<p>
					<button type="button" class="btn btn-primary btn-xs">特别小的原始按钮</button>
					<button type="button" class="btn btn-default btn-xs">特别小的按钮</button>
				</p>
				<p>
					<button type="button" class="btn btn-primary btn-lg btn-block">块级的原始按钮</button>
					<button type="button" class="btn btn-default btn-lg btn-block">块级的按钮</button>
				</p>
				<br />
				<!-- 按钮的状态 -->
				<p>
					<button type="button" class="btn btn-default btn-lg ">默认按钮</button>
					<button type="button" class="btn btn-default btn-lg active">激活按钮</button>
				</p>
				<p>
					<button type="button" class="btn btn-primary btn-lg ">原始按钮</button>
					<button type="button" class="btn btn-primary btn-lg active">激活的原始按钮</button>
				</p>
				<br />
				<!-- 禁用状态 -->
				<p>
					<button type="button" class="btn btn-default btn-lg">默认按钮</button>
					<button type="button" class="btn btn-default btn-lg" disabled="disabled">禁用按钮</button>
				</p>
				<p>
					<button type="button" class="btn btn-primary btn-lg ">原始按钮</button>
					<button type="button" class="btn btn-primary btn-lg" disabled="disabled">禁用的原始按钮</button>
				</p>
				<p>
					<a href="#" class="btn btn-default btn-lg" role="button">链接</a> <a href="#" class="btn btn-default btn-lg disabled" role="button">禁用链接</a>
				</p>
				<p>
					<a href="#" class="btn btn-primary btn-lg" role="button">原始链接</a> <a href="#" class="btn btn-primary btn-lg disabled" role="button">禁用的原始链接</a>
				</p>
				<br />
				<!-- 按钮标签，您可以在 <a>、<button> 或 <input> 元素上使用按钮 class。但是建议您在 <button> 元素上使用按钮 class，避免跨浏览器的不一致性问题。 -->
				<a class="btn btn-default" href="#" role="button">链接</a>
				<button class="btn btn-default" type="submit">按钮</button>
				<input class="btn btn-default" type="button" value="输入">
				<input class="btn btn-default" type="submit" value="提交">
				<br />
				<!-- 按钮组 -->
				<div class="btn-group">
					<button type="button" class="btn btn-primary">Apple</button>
					<button type="button" class="btn btn-primary">Samsung</button>
					<button type="button" class="btn btn-primary">Sony</button>
				</div>
				<br />
				<!-- 使用 .btn-group-lg|sm|xs 来控制按钮组的大小： -->
				<div class="btn-group btn-group-lg">
					<button type="button" class="btn btn-primary">Apple</button>
					<button type="button" class="btn btn-primary">Samsung</button>
					<button type="button" class="btn btn-primary">Sony</button>
				</div>
				<br />
				<!-- 如果要设置垂直方向的按钮可以通过 .btn-group-vertical 类来设置 -->
				<div class="btn-group-vertical">
					<button type="button" class="btn btn-primary">Apple</button>
					<button type="button" class="btn btn-primary">Samsung</button>
					<button type="button" class="btn btn-primary">Sony</button>
				</div>
				<br />
				<!-- 自适应大小的按钮组 -->
				<div class="btn-group btn-group-justified">
					<a href="#" class="btn btn-primary">Apple</a> <a href="#" class="btn btn-primary">Samsung</a> <a href="#" class="btn btn-primary">Sony</a>
				</div>
				<br />
				<!-- 注意: 如果是 <button> 元素, 你需要在外层使用 .btn-group 类来包裹 -->
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<button type="button" class="btn btn-primary">Apple</button>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-primary">Samsung</button>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-primary">Sony</button>
					</div>
				</div>
				<br />
				<!-- 内嵌下拉菜单的按钮组 -->
				<div class="btn-group">
					<button type="button" class="btn btn-primary">Apple</button>
					<button type="button" class="btn btn-primary">Samsung</button>
					<div class="btn-group">
						<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
							Sony <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Tablet</a></li>
							<li><a href="#">Smartphone</a></li>
						</ul>
					</div>
				</div>
				<br />
				<!-- 分割按钮 -->
				<div class="btn-group">
					<button type="button" class="btn btn-primary">Sony</button>
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Tablet</a></li>
						<li><a href="#">Smartphone</a></li>
					</ul>
				</div>
				<br />
				<!-- 显示关闭按钮 -->
				<div class="container">
					<h2>实例</h2>
					<p>.close 类可以显示一个关闭按钮。</p>
					<button type="button" class="close">
						<span aria-hidden="true">x</span><span class="sr-only">关闭</span>
					</button>
				</div>
				<br />
				<!-- 插入符实例 -->
				<p>
					插入符实例 <span class="caret"></span>
				</p>
				<!-- 快速浮动 -->
				<div class="pull-left">向左快速浮动</div>
				<div class="pull-right">向右快速浮动</div>
				<br />
				<!-- 清除浮动 -->
				<div class="clearfix" style="background: #D8D8D8; border: 1px solid #000; padding: 10px;">
					<div class="pull-left" style="background: #58D3F7;">向左快速浮动</div>
					<div class="pull-right" style="background: #DA81F5;">向右快速浮动</div>
				</div>
				<br />
				<!-- 内容居中 -->
				<div class="row">
					<div class="center-block" style="width: 200px; background-color: #ccc;">这是 center-block 实例</div>
				</div>
				<br />
				<!--bootstrap图片  -->
				<img src="static/image/1.jpg" class="img-rounded"> <img src="static/image/1.jpg" class="img-circle"> <img src="static/image/1.jpg" class="img-thumbnail">
				<!-- 响应式图片，通过在 <img> 标签添加 .img-responsive 类来让图片支持响应式设计。 图片将很好地扩展到父元素。.img-responsive 类将 max-width: 100%; 和 height: auto; 样式应用在图片上： -->
				<img src="static/image/1.jpg" class="img-responsive" alt="Cinque Terre">

				<!-- 显示和隐藏内容 -->
				<div class="row" style="padding: 91px 100px 19px 50px;">
					<div class="show" style="margin-left: 10px; width: 300px; background-color: #ccc;">这是 show class 的实例</div>
					<div class="hidden" style="width: 200px; background-color: #ccc;">这是 hide class 的实例</div>
				</div>

				<!-- 屏幕阅读器，您可以通过使用 class .sr-only 来把元素对所有设备隐藏，除了屏幕阅读器。 -->
				<div class="row" style="padding: 91px 100px 19px 50px;">
					<form class="form-inline" role="form">
						<div class="form-group">
							<label class="sr-only" for="email">Email 地址</label>
							<input type="email" class="form-control" placeholder="Enter email">
						</div>
						<div class="form-group">
							<label class="sr-only" for="pass">密码</label>
							<input type="password" class="form-control" placeholder="Password">
						</div>
					</form>
				</div>

				<div class="container" style="padding: 40px;">
					<div class="row visible-on">
						<div class="col-xs-6 col-sm-3" style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
							<span class="hidden-xs">特别小型</span> <span class="visible-xs">✔ 在特别小型设备上可见</span>
						</div>
						<div class="col-xs-6 col-sm-3" style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
							<span class="hidden-sm">小型</span> <span class="visible-sm">✔ 在小型设备上可见</span>
						</div>
						<div class="clearfix visible-xs"></div>
						<div class="col-xs-6 col-sm-3" style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
							<span class="hidden-md">中型</span> <span class="visible-md">✔ 在中型设备上可见</span>
						</div>
						<div class="col-xs-6 col-sm-3" style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
							<span class="hidden-lg">大型</span> <span class="visible-lg">✔ 在大型设备上可见</span>
						</div>
					</div>
				</div>

				<!-- Bootstrap 字体图标(Glyphicons) -->
				<p>
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-sort-by-attributes"></span>
					</button>
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-sort-by-attributes-alt"></span>
					</button>
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-sort-by-order"></span>
					</button>
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-sort-by-order-alt"></span>
					</button>
				</p>
				<button type="button" class="btn btn-default btn-lg">
					<span class="glyphicon glyphicon-user"></span> User
				</button>
				<button type="button" class="btn btn-default btn-sm">
					<span class="glyphicon glyphicon-user"></span> User
				</button>
				<button type="button" class="btn btn-default btn-xs">
					<span class="glyphicon glyphicon-user"></span> User
				</button>

				<!-- Bootstrap 下拉菜单（Dropdowns） -->
				<div class="dropdown">
					<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						主题 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Java</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">数据挖掘</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">数据通信/网络</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">分离的链接</a></li>
					</ul>
				</div>
				<!-- 选项对齐 -->
				<div class="dropdown">
					<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						主题 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu1">
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Java</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">数据挖掘</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">数据通信/网络</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">分离的链接</a></li>
					</ul>
				</div>
				<!-- 选项标题 -->
				<div class="dropdown">
					<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
						主题 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
						<li role="presentation" class="dropdown-header">下拉菜单标题</li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Java</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">数据挖掘</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">数据通信/网络</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation" class="dropdown-header">下拉菜单标题</li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">分离的链接</a></li>
					</ul>
				</div>

				<!-- Bootstrap 按钮组 -->
				<!-- 基本的按钮组 -->
				<div class="btn-group">
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>按钮 1
					</button>
					<button type="button" class="btn btn-default">按钮 2</button>
					<button type="button" class="btn btn-default">按钮 3</button>
				</div>
				<br />
				<!-- 按钮工具栏 -->
				<div class="btn-toolbar" role="toolbar">
					<div class="btn-group">
						<button type="button" class="btn btn-default">按钮 1</button>
						<button type="button" class="btn btn-default">按钮 2</button>
						<button type="button" class="btn btn-default">按钮 3</button>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-default">按钮 4</button>
						<button type="button" class="btn btn-default">按钮 5</button>
						<button type="button" class="btn btn-default">按钮 6</button>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-default">按钮 7</button>
						<button type="button" class="btn btn-default">按钮 8</button>
						<button type="button" class="btn btn-default">按钮 9</button>
					</div>
				</div>
				<br />
				<!-- 按钮大小 -->
				<div class="btn-group btn-group-lg">
					<button type="button" class="btn btn-default">按钮 1</button>
					<button type="button" class="btn btn-default">按钮 2</button>
					<button type="button" class="btn btn-default">按钮 3</button>
				</div>
				<div class="btn-group btn-group-sm">
					<button type="button" class="btn btn-default">按钮 4</button>
					<button type="button" class="btn btn-default">按钮 5</button>
					<button type="button" class="btn btn-default">按钮 6</button>
				</div>
				<div class="btn-group btn-group-xs">
					<button type="button" class="btn btn-default">按钮 7</button>
					<button type="button" class="btn btn-default">按钮 8</button>
					<button type="button" class="btn btn-default">按钮 9</button>
				</div>
				<br />
				<!-- 嵌套 -->
				<div class="btn-group">
					<button type="button" class="btn btn-default">按钮 1</button>
					<button type="button" class="btn btn-default">按钮 2</button>
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							下拉 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">下拉链接 1</a></li>
							<li><a href="#">下拉链接 2</a></li>
						</ul>
					</div>
				</div>
				<br />
				<!-- 垂直按钮组 -->
				<div class="btn-group-vertical">
					<button type="button" class="btn btn-default">按钮 1</button>
					<button type="button" class="btn btn-default">按钮 2</button>
					<div class="btn-group-vertical">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							下拉 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">下拉链接 1</a></li>
							<li><a href="#">下拉链接 2</a></li>
						</ul>
					</div>
				</div>
				<br />
				<!-- 按钮下拉菜单 -->
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						默认 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">功能</a></li>
						<li><a href="#">另一个功能</a></li>
						<li><a href="#">其他</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						原始 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">功能</a></li>
						<li><a href="#">另一个功能</a></li>
						<li><a href="#">其他</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
					</ul>
				</div>
				<br />
				<!-- 分割的按钮下拉菜单 -->
				<div class="btn-group">
					<button type="button" class="btn btn-default">默认</button>
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span> <span class="sr-only">切换下拉菜单</span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">功能</a></li>
						<li><a href="#">另一个功能</a></li>
						<li><a href="#">其他</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-primary">原始</button>
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span> <span class="sr-only">切换下拉菜单</span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">功能</a></li>
						<li><a href="#">另一个功能</a></li>
						<li><a href="#">其他</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
					</ul>
				</div>
				<br />
				<!-- 按钮下拉菜单的大小 -->
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle btn-lg" data-toggle="dropdown">
						默认 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">功能</a></li>
						<li><a href="#">另一个功能</a></li>
						<li><a href="#">其他</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown">
						原始 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">功能</a></li>
						<li><a href="#">另一个功能</a></li>
						<li><a href="#">其他</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-success dropdown-toggle btn-xs" data-toggle="dropdown">
						成功 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">功能</a></li>
						<li><a href="#">另一个功能</a></li>
						<li><a href="#">其他</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
					</ul>
				</div>
				<br />
				<!-- 按钮上拉菜单 -->
				<div class="row" style="margin-left: 50px; margin-top: 200px">
					<div class="btn-group dropup">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							默认 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">功能</a></li>
							<li><a href="#">另一个功能</a></li>
							<li><a href="#">其他</a></li>
							<li class="divider"></li>
							<li><a href="#">分离的链接</a></li>
						</ul>
					</div>
					<div class="btn-group dropup">
						<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
							原始 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">功能</a></li>
							<li><a href="#">另一个功能</a></li>
							<li><a href="#">其他</a></li>
							<li class="divider"></li>
							<li><a href="#">分离的链接</a></li>
						</ul>
					</div>

					<!-- Bootstrap 输入框组 -->
					<!-- 基本的输入框组 -->
					<div style="padding: 100px 100px 10px;">
						<form class="bs-example bs-example-form" role="form">
							<div class="input-group">
								<span class="input-group-addon">@</span>
								<input type="text" class="form-control" placeholder="twitterhandle">
							</div>
							<br>
							<div class="input-group">
								<input type="text" class="form-control">
								<span class="input-group-addon">.00</span>
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon">$</span>
								<input type="text" class="form-control">
								<span class="input-group-addon">.00</span>
							</div>
						</form>
					</div>
					<!-- 输入框的大小 -->
					<div style="padding: 100px 100px 10px;">
						<form class="bs-example bs-example-form" role="form">
							<div class="input-group input-group-lg">
								<span class="input-group-addon">@</span>
								<input type="text" class="form-control" placeholder="Twitterhandle">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon">@</span>
								<input type="text" class="form-control" placeholder="Twitterhandle">
							</div>
							<br>
							<div class="input-group input-group-sm">
								<span class="input-group-addon">@</span>
								<input type="text" class="form-control" placeholder="Twitterhandle">
							</div>
						</form>
					</div>
					<!-- 复选框和单选插件 -->
					<div style="padding: 100px 100px 10px;">
						<form class="bs-example bs-example-form" role="form">
							<div class="row">
								<div class="col-lg-6">
									<div class="input-group">
										<span class="input-group-addon"> <input type="checkbox"></span>
										<input type="text" class="form-control">
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
								<br>
								<div class="col-lg-6">
									<div class="input-group">
										<span class="input-group-addon"> <input type="radio"></span>
										<input type="text" class="form-control">
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
						</form>
					</div>
					<!-- 按钮插件 -->
					<div style="padding: 100px 100px 10px;">
						<form class="bs-example bs-example-form" role="form">
							<div class="row">
								<div class="col-lg-6">
									<div class="input-group">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button">Go!</button>
										</span>
										<input type="text" class="form-control">
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
								<br>
								<div class="col-lg-6">
									<div class="input-group">
										<input type="text" class="form-control">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button">Go!</button>
										</span>
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
						</form>
					</div>
					<!-- 带有下拉菜单的按钮 -->
					<div style="padding: 100px 100px 10px;">
						<form class="bs-example bs-example-form" role="form">
							<div class="row">
								<div class="col-lg-6">
									<div class="input-group">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
												下拉菜单 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu">
												<li><a href="#">功能</a></li>
												<li><a href="#">另一个功能</a></li>
												<li><a href="#">其他</a></li>
												<li class="divider"></li>
												<li><a href="#">分离的链接</a></li>
											</ul>
										</div>
										<!-- /btn-group -->
										<input type="text" class="form-control">
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
								<br>
								<div class="col-lg-6">
									<div class="input-group">
										<input type="text" class="form-control">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
												下拉菜单 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu pull-right">
												<li><a href="#">功能</a></li>
												<li><a href="#">另一个功能</a></li>
												<li><a href="#">其他</a></li>
												<li class="divider"></li>
												<li><a href="#">分离的链接</a></li>
											</ul>
										</div>
										<!-- /btn-group -->
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
						</form>
					</div>
					<!-- 分割的下拉菜单按钮 -->
					<div style="padding: 100px 100px 10px;">
						<form class="bs-example bs-example-form" role="form">
							<div class="row">
								<div class="col-lg-6">
									<div class="input-group">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default" tabindex="-1">下拉菜单</button>
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1">
												<span class="caret"></span> <span class="sr-only">切换下拉菜单</span>
											</button>
											<ul class="dropdown-menu">
												<li><a href="#">功能</a></li>
												<li><a href="#">另一个功能</a></li>
												<li><a href="#">其他</a></li>
												<li class="divider"></li>
												<li><a href="#">分离的链接</a></li>
											</ul>
										</div>
										<!-- /btn-group -->
										<input type="text" class="form-control">
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
								<br>
								<div class="col-lg-6">
									<div class="input-group">
										<input type="text" class="form-control">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default" tabindex="-1">下拉菜单</button>
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1">
												<span class="caret"></span> <span class="sr-only">切换下拉菜单</span>
											</button>
											<ul class="dropdown-menu pull-right">
												<li><a href="#">功能</a></li>
												<li><a href="#">另一个功能</a></li>
												<li><a href="#">其他</a></li>
												<li class="divider"></li>
												<li><a href="#">分离的链接</a></li>
											</ul>
										</div>
										<!-- /btn-group -->
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
						</form>
					</div>

					<!-- Bootstrap 导航元素 表格导航或标签 -->
					<p>标签式的导航菜单</p>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li><a href="#">VB.Net</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<!-- 基本的胶囊式导航菜单 -->
					<p>基本的胶囊式导航菜单</p>
					<ul class="nav nav-pills">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li><a href="#">VB.Net</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<!-- 垂直的胶囊式导航菜单 -->
					<p>垂直的胶囊式导航菜单</p>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li><a href="#">VB.Net</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<!-- 两端对齐的导航 -->
					<p>两端对齐的导航元素</p>
					<ul class="nav nav-pills nav-justified">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li><a href="#">VB.Net</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<br> <br> <br>
					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li><a href="#">VB.Net</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<!-- 禁用链接 -->
					<p>导航元素中的禁用链接</p>
					<ul class="nav nav-pills">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li class="disabled"><a href="#">iOS（禁用链接）</a></li>
						<li><a href="#">VB.Net</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<br> <br>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li class="disabled"><a href="#">VB.Net（禁用链接）</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<!-- 带有下拉菜单的标签 -->
					<p>带有下拉菜单的标签</p>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li><a href="#">VB.Net</a></li>
						<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> Java <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Swing</a></li>
								<li><a href="#">jMeter</a></li>
								<li><a href="#">EJB</a></li>
								<li class="divider"></li>
								<li><a href="#">分离的链接</a></li>
							</ul></li>
						<li><a href="#">PHP</a></li>
					</ul>
					<!-- 带有下拉菜单的胶囊 -->
					<p>带有下拉菜单的胶囊</p>
					<ul class="nav nav-pills">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">SVN</a></li>
						<li><a href="#">iOS</a></li>
						<li><a href="#">VB.Net</a></li>
						<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> Java <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Swing</a></li>
								<li><a href="#">jMeter</a></li>
								<li><a href="#">EJB</a></li>
								<li class="divider"></li>
								<li><a href="#">分离的链接</a></li>
							</ul></li>
						<li><a href="#">PHP</a></li>
					</ul>

					<!-- Bootstrap 导航栏 默认的导航栏 -->
					<nav class="navbar navbar-default" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">iOS</a></li>
									<li><a href="#">SVN</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- 响应式的导航栏 -->
					<nav class="navbar navbar-default" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
									<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div class="collapse navbar-collapse" id="example-navbar-collapse">
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">iOS</a></li>
									<li><a href="#">SVN</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- 导航栏中的表单 -->
					<nav class="navbar navbar-default" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search">
								</div>
								<button type="submit" class="btn btn-default">提交</button>
							</form>
						</div>
					</nav>
					<!-- 导航栏中的按钮 -->
					<nav class="navbar navbar-default" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<form class="navbar-form navbar-left" role="search">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Search">
									</div>
									<button type="submit" class="btn btn-default">提交按钮</button>
								</form>
								<button type="button" class="btn btn-default navbar-btn">导航栏按钮</button>
							</div>
						</div>
					</nav>
					<!-- 导航栏中的文本 -->
					<nav class="navbar navbar-default" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<p class="navbar-text">Runoob 用户登录</p>
							</div>
						</div>
					</nav>
					<!-- 组件对齐方式 -->
					<nav class="navbar navbar-default" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<!--向左对齐-->
								<ul class="nav navbar-nav navbar-left">
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
								<form class="navbar-form navbar-left" role="search">
									<button type="submit" class="btn btn-default">向左对齐-提交按钮</button>
								</form>
								<p class="navbar-text navbar-left">向左对齐-文本</p>
								<!--向右对齐-->
								<ul class="nav navbar-nav navbar-right">
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
								<form class="navbar-form navbar-right" role="search">
									<button type="submit" class="btn btn-default">向右对齐-提交按钮</button>
								</form>
								<p class="navbar-text navbar-right">向右对齐-文本</p>
							</div>
						</div>
					</nav>
					<!-- 固定到顶部 -->
					<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">iOS</a></li>
									<li><a href="#">SVN</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- 固定到底部 -->
					<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">iOS</a></li>
									<li><a href="#">SVN</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- 静态的顶部 -->
					<nav class="navbar navbar-default navbar-static-top" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">iOS</a></li>
									<li><a href="#">SVN</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- 反色的导航栏 -->
					<nav class="navbar navbar-inverse" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">菜鸟教程</a>
							</div>
							<div>
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">iOS</a></li>
									<li><a href="#">SVN</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">jmeter</a></li>
											<li><a href="#">EJB</a></li>
											<li><a href="#">Jasper Report</a></li>
											<li class="divider"></li>
											<li><a href="#">分离的链接</a></li>
											<li class="divider"></li>
											<li><a href="#">另一个分离的链接</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</nav>

					<!-- Bootstrap 面包屑导航（Breadcrumbs） -->
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">2013</a></li>
						<li class="active">十一月</li>
					</ul>

					<!-- 默认分页 -->
					<ul class="pagination">
						<li><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
					<!-- 分页的状态 -->
					<ul class="pagination">
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li class="disabled"><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
					<!-- 分页的大小 -->
					<ul class="pagination pagination-lg">
						<li><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
					<br>
					<ul class="pagination">
						<li><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
					<br>
					<ul class="pagination pagination-sm">
						<li><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
					<!-- 默认翻页 -->
					<ul class="pager">
						<li><a href="#">Previous</a></li>
						<li><a href="#">Next</a></li>
					</ul>
					<!-- 对齐的链接 -->
					<ul class="pager">
						<li class="previous"><a href="#">&larr; Older</a></li>
						<li class="next"><a href="#">Newer &rarr;</a></li>
					</ul>
					<!-- 翻页的状态 -->
					<ul class="pager">
						<li class="previous disabled"><a href="#">&larr; Older</a></li>
						<li class="next"><a href="#">Newer &rarr;</a></li>
					</ul>

					<!-- Bootstrp标签 -->
					<span class="label label-default">默认标签</span> <span class="label label-primary">主要标签</span> <span class="label label-success">成功标签</span> <span class="label label-info">信息标签</span> <span class="label label-warning">警告标签</span> <span class="label label-danger">危险标签</span><br />


					<!-- Bootstrap 徽章（Badges） -->
					<a href="#">Mailbox <span class="badge">50</span></a>
					<div class="container">
						<h2>徽章</h2>
						<p>.badge 类指定未读消息的数量:</p>
						<p>
							<a href="#">收件箱 <span class="badge">21</span></a>
						</p>
					</div>
					<!-- 激活导航状态 -->
					<h4>胶囊式导航中的激活状态</h4>
					<ul class="nav nav-pills">
						<li class="active"><a href="#">首页 <span class="badge">42</span>
						</a></li>
						<li><a href="#">简介</a></li>
						<li><a href="#">消息 <span class="badge">3</span>
						</a></li>
					</ul>
					<br>
					<h4>列表导航中的激活状态</h4>
					<ul class="nav nav-pills nav-stacked" style="max-width: 260px;">
						<li class="active"><a href="#"> <span class="badge pull-right">42</span>首页
						</a></li>
						<li><a href="#">简介</a></li>
						<li><a href="#"> <span class="badge pull-right">3</span>消息
						</a></li>
					</ul>

					<!--  -->
					<div class="container">
						<div class="jumbotron">
							<h1>欢迎登陆页面！</h1>
							<p>这是一个超大屏幕（Jumbotron）的实例。</p>
							<p>
								<a class="btn btn-primary btn-lg" role="button"> 学习更多</a>
							</p>
						</div>
					</div>
					<div class="jumbotron">
						<div class="container">
							<h1>欢迎登陆页面！</h1>
							<p>这是一个超大屏幕（Jumbotron）的实例。</p>
							<p>
								<a class="btn btn-primary btn-lg" role="button"> 学习更多</a>
							</p>
						</div>
					</div>

					<!-- Bootstrap 页面标题（Page Header） -->
					<div class="page-header">
						<h1>
							页面标题实例 <small>子标题</small>
						</h1>
					</div>
					<p>这是一个示例文本。这是一个示例文本。这是一个示例文本。这是一个示例文本。这是一个示例文本。</p>

					<!-- Bootstrap 缩略图 -->
					<div class="row">
						<div class="col-sm-6 col-md-3">
							<a href="#" class="thumbnail"> <img src="static/image/1.jpg" alt="通用的占位符缩略图">
							</a>
						</div>
						<div class="col-sm-6 col-md-3">
							<a href="#" class="thumbnail"> <img src="static/image/1.jpg" alt="通用的占位符缩略图">
							</a>
						</div>
						<div class="col-sm-6 col-md-3">
							<a href="#" class="thumbnail"> <img src="static/image/1.jpg" alt="通用的占位符缩略图">
							</a>
						</div>
						<div class="col-sm-6 col-md-3">
							<a href="#" class="thumbnail"> <img src="static/image/1.jpg" alt="通用的占位符缩略图">
							</a>
						</div>
					</div>

					<!-- 添加自定义的内容 -->
					<div class="row">
						<div class="col-sm-6 col-md-3">
							<div class="thumbnail">
								<img src="static/image/1.jpg" alt="通用的占位符缩略图">
								<div class="caption">
									<h3>缩略图标签</h3>
									<p>一些示例文本。一些示例文本。</p>
									<p>
										<a href="#" class="btn btn-primary" role="button"> 按钮 </a> <a href="#" class="btn btn-default" role="button"> 按钮 </a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3">
							<div class="thumbnail">
								<img src="static/image/1.jpg" alt="通用的占位符缩略图">
								<div class="caption">
									<h3>缩略图标签</h3>
									<p>一些示例文本。一些示例文本。</p>
									<p>
										<a href="#" class="btn btn-primary" role="button"> 按钮 </a> <a href="#" class="btn btn-default" role="button"> 按钮 </a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3">
							<div class="thumbnail">
								<img src="static/image/1.jpg" alt="通用的占位符缩略图">
								<div class="caption">
									<h3>缩略图标签</h3>
									<p>一些示例文本。一些示例文本。</p>
									<p>
										<a href="#" class="btn btn-primary" role="button"> 按钮 </a> <a href="#" class="btn btn-default" role="button"> 按钮 </a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3">
							<div class="thumbnail">
								<img src="static/image/1.jpg" alt="通用的占位符缩略图">
								<div class="caption">
									<h3>缩略图标签</h3>
									<p>一些示例文本。一些示例文本。</p>
									<p>
										<a href="#" class="btn btn-primary" role="button"> 按钮 </a> <a href="#" class="btn btn-default" role="button"> 按钮 </a>
									</p>
								</div>
							</div>
						</div>
					</div>

					<!-- Bootstrap 警告（Alerts） -->
					<div class="alert alert-success">成功！很好地完成了提交。</div>
					<div class="alert alert-info">信息！请注意这个信息。</div>
					<div class="alert alert-warning">警告！请不要提交。</div>
					<div class="alert alert-danger">错误！请进行一些更改。</div>
					<!-- 可取消的警告 -->
					<div class="alert alert-success alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						成功！很好地完成了提交。
					</div>
					<div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						信息！请注意这个信息。
					</div>
					<div class="alert alert-warning alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						警告！请不要提交。
					</div>
					<div class="alert alert-danger alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						错误！请进行一些更改。
					</div>
					<!-- 警告中的链接 -->
					<div class="alert alert-success">
						<a href="#" class="alert-link">成功！很好地完成了提交。</a>
					</div>
					<div class="alert alert-info">
						<a href="#" class="alert-link">信息！请注意这个信息。</a>
					</div>
					<div class="alert alert-warning">
						<a href="#" class="alert-link">警告！请不要提交。</a>
					</div>
					<div class="alert alert-danger">
						<a href="#" class="alert-link">错误！请进行一些更改。</a>
					</div>

					<!-- 默认的进度条 -->
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
							<span class="sr-only">40% 完成</span>
						</div>
					</div>
					<!-- 交替的进度条 -->
					<div class="progress">
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
							<span class="sr-only">90% 完成（成功）</span>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
							<span class="sr-only">30% 完成（信息）</span>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
							<span class="sr-only">20% 完成（警告）</span>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 10%;">
							<span class="sr-only">10% 完成（危险）</span>
						</div>
					</div>
					<!-- 条纹的进度条 -->
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
							<span class="sr-only">90% 完成（成功）</span>
						</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
							<span class="sr-only">30% 完成（信息）</span>
						</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
							<span class="sr-only">20% 完成（警告）</span>
						</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 10%;">
							<span class="sr-only">10% 完成（危险）</span>
						</div>
					</div>
					<!-- 动画的进度条 -->
					<div class="progress progress-striped active">
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
							<span class="sr-only">40% 完成</span>
						</div>
					</div>
					<!-- 堆叠的进度条 -->
					<div class="progress">
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
							<span class="sr-only">40% 完成</span>
						</div>
						<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
							<span class="sr-only">30% 完成（信息）</span>
						</div>
						<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
							<span class="sr-only">20% 完成（警告）</span>
						</div>
					</div>

					<!-- 多媒体对象 -->
					<!-- 左对齐 -->
					<div class="media">
						<div class="media-left">
							<img src="static/image/1.jpg" class="media-object" style="width: 60px">
						</div>
						<div class="media-body">
							<h4 class="media-heading">左对齐</h4>
							<p>这是一些示例文本...</p>
						</div>
					</div>

					<!-- 右对齐 -->
					<div class="media">
						<div class="media-body">
							<h4 class="media-heading">左对齐</h4>
							<p>这是一些示例文本...</p>
						</div>
						<div class="media-right">
							<img src="static/image/1.jpg" class="media-object" style="width: 60px">
						</div>
					</div>
					<!-- 顶部、底部、居中对齐 -->
					<!-- 置顶 -->
					<div class="media">
						<div class="media-left media-top">
							<img src="static/image/1.jpg" class="media-object" style="width: 60px">
						</div>
						<div class="media-body">
							<h4 class="media-heading">置顶</h4>
							<p>这是一些示例文本...</p>
						</div>
					</div>

					<!-- 居中对齐 -->
					<div class="media">
						<div class="media-left media-middle">
							<img src="static/image/1.jpg" class="media-object" style="width: 60px">
						</div>
						<div class="media-body">
							<h4 class="media-heading">居中</h4>
							<p>这是一些示例文本...</p>
						</div>
					</div>

					<!-- 置底 -->
					<div class="media">
						<div class="media-left media-bottom">
							<img src="static/image/1.jpg" class="media-object" style="width: 60px">
						</div>
						<div class="media-body">
							<h4 class="media-heading">置底</h4>
							<p>这是一些示例文本...</p>
						</div>
					</div>
					<!-- 内嵌多媒体对象 -->
					<div class="media">
						<div class="media-left">
							<img src="static/image/1.jpg" class="media-object" style="width: 45px">
						</div>
						<div class="media-body">
							<h4 class="media-heading">
								RUNOOB-1 <small><i>Posted on February 19, 2016</i></small>
							</h4>
							<p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>

							<!-- 内嵌多媒体对象 -->
							<div class="media">
								<div class="media-left">
									<img src="static/image/1.jpg" class="media-object" style="width: 45px">
								</div>
								<div class="media-body">
									<h4 class="media-heading">
										RUNOOB-2 <small><i>Posted on February 20, 2016</i></small>
									</h4>
									<p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>

									<!-- 内嵌多媒体对象 -->
									<div class="media">
										<div class="media-left">
											<img src="static/image/1.jpg" class="media-object" style="width: 45px">
										</div>
										<div class="media-body">
											<h4 class="media-heading">
												RUNOOB-3 <small><i>Posted on February 21, 2016</i></small>
											</h4>
											<p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
										</div>
									</div>

								</div>

								<!-- 内嵌多媒体对象 -->
								<div class="media">
									<div class="media-left">
										<img src="static/image/1.jpg" class="media-object" style="width: 45px">
									</div>
									<div class="media-body">
										<h4 class="media-heading">
											RUNOOB-4 <small><i>Posted on February 20, 2016</i></small>
										</h4>
										<p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
									</div>
								</div>

							</div>
						</div>

						<!-- 内嵌多媒体对象 -->
						<div class="media">
							<div class="media-left">
								<img src="static/image/1.jpg" class="media-object" style="width: 45px">
							</div>
							<div class="media-body">
								<h4 class="media-heading">
									RUNOOB-5 <small><i>Posted on February 19, 2016</i></small>
								</h4>
								<p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
							</div>
						</div>
					</div>

					<!-- Bootstrap 列表组 -->
					<ul class="list-group">
						<li class="list-group-item">免费域名注册</li>
						<li class="list-group-item">免费 Window 空间托管</li>
						<li class="list-group-item">图像的数量</li>
						<li class="list-group-item">24*7 支持</li>
						<li class="list-group-item">每年更新成本</li>
					</ul>

					<!-- 向列表组添加徽章 -->
					<ul class="list-group">
						<li class="list-group-item">免费域名注册</li>
						<li class="list-group-item">免费 Window 空间托管</li>
						<li class="list-group-item">图像的数量</li>
						<li class="list-group-item"><span class="badge">新</span> 24*7 支持</li>
						<li class="list-group-item">每年更新成本</li>
						<li class="list-group-item"><span class="badge">新</span> 折扣优惠</li>
					</ul>
					<!-- 向列表组添加链接 -->
					<a href="#" class="list-group-item active"> 免费域名注册 </a> <a href="#" class="list-group-item">24*7 支持</a> <a href="#" class="list-group-item">免费 Window 空间托管</a> <a href="#" class="list-group-item">图像的数量</a> <a href="#" class="list-group-item">每年更新成本</a>
					<!-- 向列表组添加自定义内容 -->
					<div class="list-group">
						<a href="#" class="list-group-item active">
							<h4 class="list-group-item-heading">入门网站包</h4>
						</a> <a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">免费域名注册</h4>
							<p class="list-group-item-text">您将通过网页进行免费域名注册。</p>
						</a> <a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">24*7 支持</h4>
							<p class="list-group-item-text">我们提供 24*7 支持。</p>
						</a>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item active">
							<h4 class="list-group-item-heading">商务网站包</h4>
						</a> <a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">免费域名注册</h4>
							<p class="list-group-item-text">您将通过网页进行免费域名注册。</p>
						</a> <a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">24*7 支持</h4>
							<p class="list-group-item-text">我们提供 24*7 支持。</p>
						</a>
					</div>
					<!-- Bootstrap 面板（Panels） -->
					<div class="panel panel-default">
						<div class="panel-body">这是一个基本的面板</div>
					</div>
					<!-- 面板标题 -->
					<div class="panel panel-default">
						<div class="panel-heading">不带 title 的面板标题</div>
						<div class="panel-body">面板内容</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">带有 title 的面板标题</h3>
						</div>
						<div class="panel-body">面板内容</div>
					</div>

					<!-- 面板脚注 -->
					<div class="panel panel-default">
						<div class="panel-body">这是一个基本的面板</div>
						<div class="panel-footer">面板脚注</div>
					</div>
					<!-- 带语境色彩的面板 -->
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">面板标题</h3>
						</div>
						<div class="panel-body">这是一个基本的面板</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">面板标题</h3>
						</div>
						<div class="panel-body">这是一个基本的面板</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">面板标题</h3>
						</div>
						<div class="panel-body">这是一个基本的面板</div>
					</div>
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h3 class="panel-title">面板标题</h3>
						</div>
						<div class="panel-body">这是一个基本的面板</div>
					</div>
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">面板标题</h3>
						</div>
						<div class="panel-body">这是一个基本的面板</div>
					</div>

					<!-- 带表格的面板 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">面板标题</h3>
						</div>
						<div class="panel-body">这是一个基本的面板</div>
						<table class="table">
							<th>产品</th>
							<th>价格</th>
							<tr>
								<td>产品 A</td>
								<td>200</td>
							</tr>
							<tr>
								<td>产品 B</td>
								<td>400</td>
							</tr>
						</table>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">面板标题</div>
						<table class="table">
							<th>产品</th>
							<th>价格</th>
							<tr>
								<td>产品 A</td>
								<td>200</td>
							</tr>
							<tr>
								<td>产品 B</td>
								<td>400</td>
							</tr>
						</table>
					</div>

					<!-- 带列表组的面板 -->
					<div class="panel panel-default">
						<div class="panel-heading">面板标题</div>
						<div class="panel-body">
							<p>这是一个基本的面板内容。这是一个基本的面板内容。 这是一个基本的面板内容。这是一个基本的面板内容。 这是一个基本的面板内容。这是一个基本的面板内容。 这是一个基本的面板内容。这是一个基本的面板内容。</p>
						</div>
						<ul class="list-group">
							<li class="list-group-item">免费域名注册</li>
							<li class="list-group-item">免费 Window 空间托管</li>
							<li class="list-group-item">图像的数量</li>
							<li class="list-group-item">24*7 支持</li>
							<li class="list-group-item">每年更新成本</li>
						</ul>
					</div>

					<!-- Bootstrap 模态框（Modal）插件 -->
					<h2>创建模态框（Modal）</h2>
					<!-- 按钮触发模态框 -->
					<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">开始演示模态框</button>
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
								</div>
								<div class="modal-body">在这里添加一些文本</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary">提交更改</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal -->
					</div>

					<!-- Bootstrap 提示工具（Tooltip）插件 -->
					<h4>提示工具（Tooltip）插件 - 锚</h4>
					这是一个 <a href="#" class="tooltip-test" data-toggle="tooltip" title="默认的 Tooltip"> 默认的 Tooltip </a>. 这是一个 <a href="#" class="tooltip-test" data-toggle="tooltip" data-placement="left" title="左侧的 Tooltip"> 左侧的 Tooltip </a>. 这是一个 <a href="#" data-toggle="tooltip" data-placement="top" title="顶部的 Tooltip"> 顶部的 Tooltip </a>. 这是一个 <a href="#" data-toggle="tooltip" data-placement="bottom" title="底部的 Tooltip"> 底部的 Tooltip </a>. 这是一个 <a href="#" data-toggle="tooltip" data-placement="right"
						title="右侧的 Tooltip"
					> 右侧的 Tooltip </a> <br>

					<h4>提示工具（Tooltip）插件 - 按钮</h4>
					<button type="button" class="btn btn-default" data-toggle="tooltip" title="默认的 Tooltip">默认的 Tooltip</button>
					<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="左侧的 Tooltip">左侧的 Tooltip</button>
					<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="顶部的 Tooltip">顶部的 Tooltip</button>
					<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="底部的 Tooltip">底部的 Tooltip</button>
					<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="右侧的 Tooltip">右侧的 Tooltip</button>
					<script>
						$(function() {
							$("[data-toggle='tooltip']").tooltip();
						});
					</script>

					<!-- 弹出框 -->
					<div class="container" style="padding: 100px 50px 10px;">
						<button type="button" class="btn btn-default" title="Popover title" data-container="body" data-toggle="popover" data-placement="left" data-content="左侧的 Popover 中的一些内容">左侧的 Popover</button>
						<button type="button" class="btn btn-primary" title="Popover title" data-container="body" data-toggle="popover" data-placement="top" data-content="顶部的 Popover 中的一些内容">顶部的 Popover</button>
						<button type="button" class="btn btn-success" title="Popover title" data-container="body" data-toggle="popover" data-placement="bottom" data-content="底部的 Popover 中的一些内容">底部的 Popover</button>
						<button type="button" class="btn btn-warning" title="Popover title" data-container="body" data-toggle="popover" data-placement="right" data-content="右侧的 Popover 中的一些内容">右侧的 Popover</button>
					</div>

					<script>
						$(function() {
							$("[data-toggle='popover']").popover();
						});
					</script>
				</div>
				<!-- 示例 -->
				<h3>警告框（Alert）插件 alert('close') 方法</h3>
				<div id="myAlert" class="alert alert-success">
					<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>成功！</strong>结果是成功的。
				</div>
				<div id="myAlert2" class="alert alert-warning">
					<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>警告！</strong>您的网络连接有问题。
				</div>

				<script>
					$(function() {
						$(".close").click(function() {
							$("#myAlert").alert('close');
							$("#myAlert2").alert('close');
						});
					});
				</script>
				<!-- 事件 -->
				<div id="myAlert" class="alert alert-success">
					<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>成功！</strong>结果是成功的。
				</div>

				<script>
					$(function() {
						$("#myAlert").bind('closed.bs.alert', function() {
							alert("警告消息框被关闭。");
						});
					});
				</script>

				<!-- Bootstrap 按钮（Button）插件 -->
				<button id="fat-btn" class="btn btn-primary" data-loading-text="Loading..." type="button">加载状态</button>
				<script>
					$(function() {
						$(".btn").click(function() {
							$(this).button('loading').delay(1000).queue(function() {
								// $(this).button('reset');
								// $(this).dequeue(); 
							});
						});
					});
				</script>
				<!-- 单个切换 -->
				<button type="button" class="btn btn-primary" data-toggle="button">单个切换</button>
				<!-- 复选框（Checkbox） -->
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-primary"> <input type="checkbox"> 选项 1
					</label> <label class="btn btn-primary"> <input type="checkbox"> 选项 2
					</label> <label class="btn btn-primary"> <input type="checkbox"> 选项 3
					</label>
				</div>

				<!-- 单选按钮（Radio） -->
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-primary"> <input type="radio" name="options" id="option1"> 选项 1
					</label> <label class="btn btn-primary"> <input type="radio" name="options" id="option2"> 选项 2
					</label> <label class="btn btn-primary"> <input type="radio" name="options" id="option3"> 选项 3
					</label>
				</div>
				<!-- 事件 -->
				<h2>点击每个按钮查看方法效果</h2>
				<h4>演示 .button('toggle') 方法</h4>
				<div id="myButtons1" class="bs-example">
					<button type="button" class="btn btn-primary">原始</button>
				</div>

				<h4>演示 .button('loading') 方法</h4>
				<div id="myButtons2" class="bs-example">
					<button type="button" class="btn btn-primary" data-loading-text="Loading...">原始</button>
				</div>

				<h4>演示 .button('reset') 方法</h4>
				<div id="myButtons3" class="bs-example">
					<button type="button" class="btn btn-primary" data-loading-text="Loading...">原始</button>
				</div>

				<h4>演示 .button(string) 方法</h4>
				<button type="button" class="btn btn-primary" id="myButton4" data-complete-text="Loading finished">请点击我</button>
				<script>
					$(function() {
						$("#myButtons1 .btn").click(function() {
							$(this).button('toggle');
						});
					});
					$(function() {
						$("#myButtons2 .btn").click(function() {
							$(this).button('loading').delay(1000).queue(function() {
							});
						});
					});
					$(function() {
						$("#myButtons3 .btn").click(function() {
							$(this).button('loading').delay(1000).queue(function() {
								$(this).button('reset');
							});
						});
					});
					$(function() {
						$("#myButton4").click(function() {
							$(this).button('loading').delay(1000).queue(function() {
								$(this).button('complete');
							});
						});
					});
				</script>

				<!-- Bootstrap 折叠（Collapse）插件 -->
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> 点击我进行展开，再次点击我进行折叠。第 1 部分 </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> 点击我进行展开，再次点击我进行折叠。第 2 部分 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"> 点击我进行展开，再次点击我进行折叠。第 3 部分 </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.</div>
						</div>
					</div>
				</div>

				<!-- 轮播 -->
				<div id="myCarousel" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="static/image/1.jpg" alt="First slide">
						</div>
						<div class="item">
							<img src="static/image/1.jpg" alt="Second slide">
						</div>
						<div class="item">
							<img src="static/image/1.jpg" alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control left" href="#myCarousel" data-slide="prev"> <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a> <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>