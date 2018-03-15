package com.p2p.util;
/**
 * 操作人  :汪栋才
 * 操作时间 :2017-12-24
 * 把各种要发送验证码或者邮箱的类别都分别取变量
 * MSG  :代表短信信息
 * MAIL :代表邮箱信息
 * ZN   :代表站内信息
 * */
public class MessageBenas {
	
	/**
	 *尊敬的用户您好,手机注册验证码为{*},请尽快填写以完成注册,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_REGCODE = "短信注册提示";
	public static final String MAIL_REGCODE = "邮箱注册提示"; 
	
	/**
	 *尊敬的用户您好,您的{*}账号在异地登入,如果不是您本人操作,请及时更改密码或联系客服【忆信财富】
	 * */
	public static final String MSG_LOGING = "短信登入提示";
	public static final String MAIL_LOGIN = "邮箱登入提示";
	
	/**
	 * 尊敬的用户您好,您的需要修改账号的验证码为{*},请尽快填写完相关资料信息完成修改,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_UPDATEPHONE = "短信修改账号提示";
	
	/**
	 * 尊敬的用户您好,您本次还款{*}元,如对此单有疑问,请及时联系我们客服,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_REPAYMENT = "还款详情提示";
	
	/**
	 * 尊敬的用户您好,您的账号{*}需找回密码的验证码是{*},请尽快填写相关资料信息,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_UPDATEPWD = "短信找回密码提示";
	public static final String MAIL_UPDATEPWD = "邮箱找回密码提示";
	
	/**
	 *尊敬的用户您好,您的{*}账号在{**}已充值{***}元,如对此账单有疑问,请及时联系我们的客服,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_ADDMONEY = "短信充值提示";
	public static final String MAIL_ADDMONEY = "邮箱充值提示";
	public static final String ZN_ADDMONEY = "站内充值提示";
	
	
	/**
	 *尊敬的用户您好,您的{*}账号在{**}投资了{***}项目,如果不是您本人操作,请及时联系我们的客服,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_INVEST = "短信投资提示";
	public static final String MAIL_INVEST = "邮箱投资提示";
	public static final String ZN_INVEST = "站内投资提示";
	
	/**
	 *尊敬的用户您好,您的{*}账号在{**}项目收到了{***}元的{****},感谢您的使用,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_GITEMONEY = "短信收到本金或利息";
	public static final String MAIL_GITEMONEY = "邮箱收到本金或利息"; 
	public static final String ZN_GITEMONEY = "站内收到本金或利息";
	
	/**
	 * 平台奖励
	 * */
	public static final String MAIL_AWARD = "邮箱平台奖励"; 
	public static final String ZN_AWARD = "站内平台奖励";
	
	/**
	 * 尊敬的{**}您好,您在忆信金融提现的金额已受理,金额将在五个工作日内返回您的银行卡账号,没有此操作请不要理会此信息【忆信金融】
	 * */
	public static final String MSG_DEPOSIT = "短信提现提示";
	public static final String MAIL_DEPOSIT = "邮箱提现提示"; 
	public static final String ZN_DEPOSIT = "站内提现提示";
	
	
	/**
	 * 债权转让成功
	 * */
	public static  final String MAIL_DEPTZR = "邮箱债权转让提示"; 
	public static final String ZN_DEPTZR = "站内债权转让提示";
	
	
	/**
	 * 债权承接成功
	 * */
	public static final String MAIL_DEPTCJ = "邮箱债权承接提示"; 
	public static final String ZN_DEPTCJ = "站内债权承接提示";
	
	
	/**
	 * 尊敬的用户您好,忆信财富最近推出了一款{*}项目,预期年化收益率为{**},回利期限只有{***}天,机不可失,失不再来,有意请点击{****},祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_PROMSG = "短信项目公告提示";
	public static final String MAIL_PROMSG = "邮箱项目工告提示"; 
	public static final String ZN_PROMSG = "站内项目工告提示";
	
	
	/**
	 * 尊敬的用户您好,您所投的{*}项目已正在还款,请注意您的余额明细,祝您生活愉快【忆信财富】
	 * */
	public static final String MSG_ACTIMSG = "短信活动公告提示";
	public static final String MAIL_ACTIMSG = "邮箱活动公告提示"; 
	public static final String ZN_ACTIMSG = "站内活动公告提示";
	
	
	/**
	 * 其他平台公告
	 * */
	public static final String MAIL_ORDERMSG = "邮箱其他公告提示"; 
	public static final String ZN_ORDERMSG = "站内其他公告提示";
	
}
