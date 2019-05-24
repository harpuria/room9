package com.kosmo.room9.service.email;

import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;

public class EmailSender {
//   
//	@Autowired
//  private JavaMailSender mailSender;
    
    public void SendEmail(JavaMailSender mailSender, Email email) throws Exception {
    	System.out.println("들어오니? : " + mailSender);
        MimeMessage msg = mailSender.createMimeMessage();

        
        
        try {
        	msg.setHeader("Content-Type", "text/html; charset=UTF-8");
            msg.setSubject(email.getSubject());
            msg.setContent(email.getContent(), "text/html");
            //msg.setText(email.getContent());
            msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
           
        }catch(MessagingException e) {
            System.out.println("MessagingException");
            e.printStackTrace();
        }
        
        try {
            mailSender.send(msg);
        }catch(MailException e) {
            System.out.println("MailException발생");
            e.printStackTrace();
        }
    }
}
