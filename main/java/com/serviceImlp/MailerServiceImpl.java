package com.serviceImlp;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.entity.MailInfo;
import com.service.MailerService;





@Service
public class MailerServiceImpl implements MailerService {
	@Autowired
	JavaMailSender sender;
	@Autowired
	HttpServletRequest request;
	List<MailInfo> list = new ArrayList<>();

	@Override
	public void send(MailInfo mail) throws MessagingException {
		// TODO Auto-generated method stub
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		helper.setFrom(mail.getFrom());
		helper.setTo(mail.getTo());
		helper.setSubject(mail.getSubject());
		helper.setText(mail.getBody(), true);
		helper.setReplyTo(mail.getFrom());

		String[] cc = mail.getCc();
		if (cc != null && cc.length > 0) {
			helper.setCc(cc);

		}

		String[] bcc = mail.getBcc();
		if (bcc != null && bcc.length > 0) {
			helper.setBcc(bcc);
		}

		String[] attachments = mail.getAttachments();
		if (attachments != null && attachments.length > 0) {
			for (String path : attachments) {
				File file = new File(request.getServletContext().getRealPath("/uploads/"+path));
				helper.addAttachment(file.getName(), file);
			}
		}

		// Gửi message đến SMTP server
		sender.send(message);

	}

	@Override
	public void send(String from, String to, String[] cc, String[] bcc, String subject, String body,
			String[] attachments) throws MessagingException {
		this.send(new MailInfo(from, to, cc, bcc, subject, body, attachments));

	}

	@Override
	public void queue(MailInfo mail) {
		// TODO Auto-generated method stub
		list.add(mail);
	}

	@Override
	public void queue(String from, String to, String[] cc, String[] bcc, String subject, String body,
			String[] attachments) {
		// TODO Auto-generated method stub
		queue(new MailInfo(from, to, cc, bcc, subject, body, attachments));

	}

	@Scheduled(fixedDelay = 5000)
	public void run() {
		while (!list.isEmpty()) {
			MailInfo mail = list.remove(0);
			try {
				this.send(mail);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
