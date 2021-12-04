/**
 * 
 */
$.fn.serializeObject = function() {
	var o = {};
	var a = this.serializeArray();
	$.each(a, function() {
		if (o[this.name]) {
			if (!o[this.name].push) {
				o[this.name] = [o[this.name]];
			}
			o[this.name].push(this.value || '');
		} else {
			o[this.name] = this.value || '';
		}
	});
	return o;
};

$(function() {

	$("#studentTb").bootstrapTable('destroy').bootstrapTable({
		url : '/student/list',
		method : 'POST',
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		uniqueId : 'id', // 绑定ID，不显示
		toolbar : '#toolbar', // 工具按钮用哪个容器
		striped : true, // 是否显示行间隔色
		cache : false, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		undefinedText : '--',
		showRefresh : true, // 显示刷新按钮
		showColumns : true, // 选择显示的列
		search : false,
		singleSelect : false,// 单行选择单行,设置为true将禁止多选
		clickToSelect : true, // 点击选中行
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		showExport : true, // 是否显示导出按钮
		exportDataType : "all", // basic', 'all', 'selected'.
		exportTypes : ['json', 'xml', 'png', 'csv', 'txt', 'sql', 'doc', 'excel', 'powerpoint', 'pdf'], // 导出类型
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		sidePagination : "server",
		pagination : true, // 是否显示分页
		pageNumber : 1, // 初始化加载第一页，默认第一页,并记录
		pageSize : 5,// 每页显示的数量
		pageList : [5, 10, 20, 50, 100],// 设置每页显示的数量
		paginationPreText : "上一页",
		paginationNextText : "下一页",
		paginationLoop : false,
		queryParams : function(params) {
			var temp = {
				limit : params.limit, // 页面大小
				offset : params.offset,// 页码
				sort : params.sort, // 排序列名
				sortOrder : params.order
				// 排位命令（desc，asc）
			};
			return Object.assign(temp, $("#searchForm").serializeObject());
		},
		responseHandler : function(res) {
			return {
				"total" : res.data.total,
				"rows" : res.data.rows
			};
		},
		columns : [{
			checkbox : true
		}, {
			field : 'id',
			title : 'ID',
			valign : 'middle',
			visible : false
		}, {
			field : 'name',
			title : '姓名',
			valign : 'middle'
		}, {
			field : 'sex.desc',
			title : '性别',
			valign : 'middle'
		}, {
			field : 'age',
			title : '年龄',
			valign : 'middle',
			sortable : true,
			editable : {
				type : 'number',
				clear : false,
				validate : function(value) {
					if (isNaN(value))
						return {
							newValue : 0,
							msg : '只允许输入数字'
						};
					else if (value <= 0)
						return {
							newValue : 0,
							msg : '年龄不能小于等于0'
						};
					else if (value >= 100)
						return {
							newValue : 0,
							msg : '当前最大只能输入99'
						};
				},
				display : function(value) {
					$(this).text(Number(value));
				},
				// onblur:'ignore',
				showbuttons : true,
				defaultValue : 0,
				mode : 'inline'
			}
		}, {
			field : 'address',
			title : '地址',
			valign : 'middle'
		}, {
			field : 'birthday',
			title : '生日',
			valign : 'middle',
			formatter : operateFormatter
		}, {
			field : 'email',
			title : '邮箱',
			valign : 'middle'
		}],
		formatLoadingMessage : function() {
			return "请稍等，正在加载中...";
		},
		formatNoMatches : function() { // 没有匹配的结果
			$("#searchBtn").button("reset");
			return '无符合条件的记录';
		},
		onLoadSuccess : function() {
			$("#searchBtn").button("reset");
			// layer.msg('表格加载成功！');
		},
		onLoadError : function() {
			$("#searchBtn").button("reset");
			layer.msg("数据加载失败！");
		},
		onDblClickRow : function(row, $element) {
			var id = row.id;
			layer.msg(id);
		},
		rowStyle : function(row, index) { // 设置行的特殊样式
			// 这里有5个取值颜色['active', 'success', 'info', 'warning', 'danger'];
			var strclass = "";
			if (index == 1) {
				strclass = "warning";
				// console.log(row);
			}
			return {
				classes : strclass
			}
		},
		onEditableSave : function(field, row, oldValue, $el) {
			$.ajax({
				type : "post",
				url : "/student/save",
				data : {
					id : row.id,
					age : row.age
				},
				dataType : 'JSON',
				success : function(data, status) {
					if (data.code == "0") {
						$('#studentTb').bootstrapTable('refresh');
						layer.msg('修改成功');
					} else {
						layer.alert(data.message);
					}
				},
				error : function() {
					alert('编辑失败');
				},
				complete : function() {

				}

			});
			return true;
		}
	});

	$("#searchBtn").click(function() {
		$("#searchBtn").button("loading");
		$("#studentTb").bootstrapTable('refresh');
	});

	$("#resetSearch").click(function() {
		$("#searchForm")[0].reset();
		// select2下拉框重置
		$('#sex').selectpicker('val', ['noneSelectedText']);
		$("#sex").selectpicker('refresh');
	});

	$("#addBtn").click(function() {
		var html = template("studentTemplate", {});
		layer.open({
			type : 1,
			title : "新增",
			btn : ['确定', '取消'],
			area : ['450px', '440px'],
			content : html,
			yes : function(index, layero) {
				var bootstrapValidator = $("#studentForm").data('bootstrapValidator');
				bootstrapValidator.validate();
				if (!bootstrapValidator.isValid()) {
					return;
				}
				$.post("/student/save", $("#studentForm").serialize(), function(result) {
					if (result && result.code == 0) {
						layer.msg("新增成功！");
						layer.close(index);
						$("#studentTb").bootstrapTable('refresh');
					} else {
						layer.alert(data.message);
					}
				});
			},
			btn2 : function(index, layero) {
				layer.close(index)
			}
		});

		$('#studentForm').bootstrapValidator({
			message : 'This value is not valid',// 默认的提示消息
			feedbackIcons : {// 表单框里右侧的icon
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			submitHandler : function(validator, form, submitButton) {
				// 表单提交成功时会调用此方法
				// validator: 表单验证实例对象
				// form jq对象 指定表单对象
				// submitButton jq对象 指定提交按钮的对象
			},
			fields : {
				name : {
					message : '姓名验证失败',
					validators : {
						notEmpty : {
							message : '姓名不能为空'
						},
						stringLength : { // 长度限制
							min : 6,
							max : 18,
							message : '姓名长度必须在6到18位之间'
						},
						regexp : { // 正则表达式
							regexp : /^[a-zA-Z0-9_]+$/,
							message : '姓名只能包含大写、小写、数字和下划线'
						},
						different : { // 比较
							field : 'username', // 需要进行比较的input name值
							message : '密码不能与姓名相同'
						},
						identical : { // 比较是否相同
							field : 'password', // 需要进行比较的input name值
							message : '两次密码不一致'
						},
						remote : { // ajax校验，获得一个json数据（{'valid': true or false}）
							url : 'user.php', // 验证地址
							message : '用户已存在', // 提示信息
							type : 'POST', // 请求方式
							data : function(validator) { // 自定义提交数据，默认为当前input name值
								return {
									act : 'is_registered',
									username : $("input[name='username']").val()
								};
							}
						}
					}
				},
				age : {
					validators : {
						notEmpty : {},
						digits : {},
						greaterThan : {
							value : 18
						},
						lessThan : {
							value : 100
						}
					}
				},
				sex : {
					message : '性别必选',
					validators : {
						notEmpty : {
							message : '性别必选'
						}
					}
				},
				email : {
					validators : {
						notEmpty : {
							message : '邮箱不能为空'
						},
						emailAddress : {
							message : '邮箱格式错误'
						}
					}
				}
			}
		});
	});

	$("#modifyBtn").click(function() {
		var rows = $("#studentTb").bootstrapTable('getSelections');
		if (rows.length == 0) {
			layer.msg("请选择一条数据");
			return;
		}

		$.post("/student/findById", {
			id : rows[0].id
		}, function(result) {
			if (result && result.code == 0) {
				var html = template("studentTemplate", result.data);
				layer.open({
					type : 1,
					title : "新增",
					btn : ['确定', '取消'],
					area : ['450px', '440px'],
					content : html,
					yes : function(index, layero) {
						$.post("/student/save", $("#studentForm").serialize(), function(result) {
							if (result && result.code == 0) {
								layer.msg("更新成功！");
								layer.close(index);
								$("#studentTb").bootstrapTable('refresh');
							} else {
								layer.alert(data.message);
							}
						});
					},
					btn2 : function(index, layero) {
						layer.close(index)
					}
				});
			}
		});
	});

	$("#delBtn").click(function() {
		var rows = $("#studentTb").bootstrapTable('getSelections');
		if (rows.length == 0) {
			layer.msg("请选择数据");
			return;
		}

		layer.confirm('您确定删除吗?', {
			icon : 3,
			title : '提示'
		}, function(index) {
			var idsArray = [];
			for (var i in rows) {
				idsArray.push(rows[i].id);
			}
			$.post("/student/delete", {
				ids : idsArray.join(",")
			}, function(data) {
				if (data.code == 0) {
					layer.msg("删除成功！");
					$("#studentTb").bootstrapTable('refresh');
				} else {
					layer.alert(data.message);
				}
			});
			layer.close(index);
		});
	});

	$("#exportBtn").click(function() {
		var layerIndex;
		var downloadURL = "/student/down";
		$.fileDownload(downloadURL, {
			httpMethod : 'post',
			data : {
				'FileName' : 'test.txt'
			},
			prepareCallback : function(url) {
				console.log("文件下载中...");
				// 数据加载动画
				layerIndex = layer.load(1, {
					shade : [0.2, '#fff']
				});// 遮罩层透明度0.2
			},
			abortCallback : function(url) {
				// 异常终止
				layer.close(layerIndex);
				layer.msg("文件下载异常！！");
			},
			successCallback : function(url) {
				layer.close(layerIndex);
				layer.msg("文件下载成功！！");
			},
			failCallback : function(html, url) {
				layer.close(layerIndex);
				layer.msg("文件下载失败！！");
			}
		});
	});
});

function getSelectValue() {
	var a = $("#studentTb").bootstrapTable('getSelections');// 获取选中行的数据
	if (a.length > 0) {
		console.log(a);
	}
}

function operateFormatter(value, row, index) {
	// var result = '<button class="btn btn-action" title="激活USBKEY认证"
	// onclick=""><i class="glyphicon glyphicon-pencil"></i></button>';
	// return value.split(" ")[0];
	var html = '<label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2" name="configList[' + index + '].type" value="ocean"> 海运</label>';
	return value;
}

function getNowFormatDate() {
	var date = new Date();
	var seperator1 = "-";
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	var strDate = date.getDate();
	if (month >= 1 && month <= 9) {
		month = "0" + month;
	}
	if (strDate >= 0 && strDate <= 9) {
		strDate = "0" + strDate;
	}
	var currentdate = year + seperator1 + month + seperator1 + strDate;
	return currentdate;
}

/**
 * 对日期进行格式化，
 * 
 * @param date
 *            要格式化的日期
 * @param format
 *            进行格式化的模式字符串 支持的模式字母有： y:年, M:年中的月份(1-12), d:月份中的天(1-31), h:小时(0-23), m:分(0-59), s:秒(0-59), S:毫秒(0-999), q:季度(1-4)
 * @return String
 * @author yanis.wang
 * @see http://yaniswang.com/frontend/2013/02/16/dateformat-performance/
 */
function dateFormatter(date, format) {

	if (typeof date === "string") {
		var mts = date.match(/(\/Date\((\d+)\)\/)/);
		if (mts && mts.length >= 3) {
			date = parseInt(mts[2]);
		}
	}
	date = new Date(date);
	if (!date || date.toUTCString() == "Invalid Date") {
		return "";
	}

	var map = {
		"M" : date.getMonth() + 1, // 月份
		"d" : date.getDate(), // 日
		"h" : date.getHours(), // 小时
		"m" : date.getMinutes(), // 分
		"s" : date.getSeconds(), // 秒
		"q" : Math.floor((date.getMonth() + 3) / 3), // 季度
		"S" : date.getMilliseconds()
		// 毫秒
	};

	format = format.replace(/([yMdhmsqS])+/g, function(all, t) {
		var v = map[t];
		if (v !== undefined) {
			if (all.length > 1) {
				v = '0' + v;
				v = v.substr(v.length - 2);
			}
			return v;
		} else if (t === 'y') {
			return (date.getFullYear() + '').substr(4 - all.length);
		}
		return all;
	});
	return format;
};