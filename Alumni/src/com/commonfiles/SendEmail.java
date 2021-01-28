package com.commonfiles;

import javax.mail.*;
import javax.mail.internet.*;

import com.pojo.Email;

import java.io.File;
import java.util.*;

public class SendEmail {

	final String senderEmailID = "demosender4@gmail.com";
	final String senderPassword = "demo@123";
	final String emailSMTPserver = "smtp.gmail.com";
	final String emailServerPort = "465";
	String receiverEmailID = null;
	static String emailSubject = "Test Mail";
	static String emailBody = ":)";

	public boolean sendEmail(Email e, String path) {

		// Receiver Email Address
		this.receiverEmailID = e.getEto();
		// Subject
		this.emailSubject = e.getEsubject();
		// Body
		this.emailBody = e.getEcontent();
		Properties props = new Properties();
		props.put("mail.smtp.user", senderEmailID);
		props.put("mail.smtp.host", emailSMTPserver);
		props.put("mail.smtp.port", emailServerPort);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", emailServerPort);
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		SecurityManager security = System.getSecurityManager();
		try {
			Authenticator auth = new SMTPAuthenticator();
			Session session = Session.getInstance(props, auth);
			MimeMessage msg = new MimeMessage(session);

			msg.setSubject(emailSubject);
			msg.setFrom(new InternetAddress(senderEmailID));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(receiverEmailID));
			if (path.equals(""))
				msg.setText(emailBody);
			else {
				BodyPart messageBodyPart = new MimeBodyPart();
				messageBodyPart.setText(emailBody);

				MimeBodyPart attachmentPart = new MimeBodyPart();
				attachmentPart.attachFile(new File(path));

				Multipart multipart = new MimeMultipart();
				multipart.addBodyPart(messageBodyPart);
				multipart.addBodyPart(attachmentPart);

				msg.setContent(multipart);
			}
			Transport.send(msg);
			System.out.println("Message send Successfully:)");
			return true;
		}

		catch (Exception mex) {
			mex.printStackTrace();
		}
		return false;

	}

	public class SMTPAuthenticator extends javax.mail.Authenticator {
		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(senderEmailID, senderPassword);
		}
	}
}