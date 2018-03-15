

	// 用户名特殊字符验证
	jQuery.validator.addMethod("isspeCode", function(value, element) {   
	    var username = /[^a-zA-Z0-9\u4E00-\u9FA5\_-]/;
	    return this.optional(element) || !(username.test(value));
	}, '用户名仅支持汉字、字母、数字及 "-"、"_"组合"');

	// 手机号码验证
	jQuery.validator.addMethod("isphone", function(value, element) {   
	    var phone = /(^1[3|5|4|7|8][0-9]{9}$)/;
	   
	    var i = this.optional(element) || (phone.test(value));
	    
	    return i;
	}, '请输入正确的手机号码');

	// 密码验证
	jQuery.validator.addMethod("ispass", function(value, element) {   
	    var pass = /^(?![^a-zA-Z]+$)(?!\D+$)\S{8,20}$/;
	    return this.optional(element) || (pass.test(value));
	}, '请输入正确的密码');

	// 金额验证
	jQuery.validator.addMethod("ismoney", function(value, element) {   
	    var pass = /^[0-9]+([.]{1}[0-9]+){0,1}$/;
		/* var _true = (pass.test(value));*/
	    return this.optional(element) || (pass.test(value));
	}, '请输入正确的金额');

	// 金额必须大于100
	jQuery.validator.addMethod("ismoneysize", function(value, element) {   

	    return this.optional(element) || (parseInt(value)>=100);
	}, '金额必须大于100');

	// 身份证验证
	jQuery.validator.addMethod("isidentity", function(value, element) {   
	    var pass = /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
		/* var _true = (pass.test(value));*/
	    return this.optional(element) || (pass.test(value));
	}, '请输入正确的身份证');

