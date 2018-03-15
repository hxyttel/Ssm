package com.p2p.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class MailSendUtil {

    //发送html格式的邮箱(单发)
    public static void sendHtmlMail(MailInfo info)throws Exception{
        //info.set
        Message message = getMessage(info);
        // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
        Multipart mainPart = new MimeMultipart();
        // 创建一个包含HTML内容的MimeBodyPart
        BodyPart html = new MimeBodyPart();
        // 设置HTML内容
        html.setContent(info.getContent(), "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        // 将MiniMultipart对象设置为邮件内容
        message.setContent(mainPart);
        Transport.send(message);
    }
    
  //发送html格式的邮箱(群发)
    public static void sendHtmlMailalluser(MailInfo info)throws Exception{
        Message message = getMessage(info);
       
        // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
        Multipart mainPart = new MimeMultipart();

        // 创建一个包含HTML内容的MimeBodyPart
        BodyPart html = new MimeBodyPart();
        // 设置HTML内容
        html.setContent(info.getContent(), "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        // 将MiniMultipart对象设置为邮件内容
        message.setContent(mainPart);
        
        
        Transport.send(message);
    }
    

    private static Message getMessage(MailInfo info) throws Exception{
        final Properties p = System.getProperties() ;
        p.setProperty("mail.smtp.host", info.getHost());
        p.setProperty("mail.smtp.auth", "true");
        p.setProperty("mail.smtp.user", info.getFormName());
        p.setProperty("mail.smtp.pass", info.getFormPassword());
        //QQ特有
     
        p.setProperty("mail.transport.protocol", "smtp");// 连接协议        
        p.put("mail.smtp.port", 465);// 端口号        
        p.put("mail.smtp.ssl.enable", "true");  //设置是否使用ssl安全连接  ---一般都使用    
        
        
        // 根据邮件会话属性和密码验证器构造一个发送邮件的session
        Session session = Session.getInstance(p, new Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(p.getProperty("mail.smtp.user"),p.getProperty("mail.smtp.pass"));
            }
        });
        session.setDebug(true);
        Message message = new MimeMessage(session);
        //消息发送的主题
        message.setSubject(info.getSubject());
        //接受消息的人
        message.setReplyTo(InternetAddress.parse(info.getReplayAddress()));
        //消息的发送者
        message.setFrom(new InternetAddress(p.getProperty("mail.smtp.user"),"忆信金融"));
        // 创建邮件的接收者地址，并设置到邮件消息中
    	if(info.getToAddress()!=null){
    		  message.setRecipient(Message.RecipientType.TO,new InternetAddress(info.getToAddress()));
    	}else{
    		  String[] to =info.getAddress();
    	 	   InternetAddress[]   address=new   InternetAddress[to.length];
    	 	   for(int   i=0;i <address.length;i++)
    	 	   {
    	 	       address[i]=new   InternetAddress(to[i]);  
    	 	   }
    	 	  message.setRecipients(Message.RecipientType.TO,address);
    	}
      		    
          // 消息发送的时间
        message.setSentDate(new Date());


        return message ;
    }
}