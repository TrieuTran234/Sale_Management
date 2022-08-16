package com.service;

import javax.mail.MessagingException;

import org.springframework.stereotype.Service;

import com.entity.MailInfo;




@Service
public interface MailerService {

	/**
	 * Gửi email
	 * 
	 * @param mail thông tin email
	 * @throws MessagingException lỗi gửi email
	 */
	void send(MailInfo mail) throws MessagingException;

	/**
	 * Gửi email đơn giản
	 * 
	 * @param to      email người nhận
	 * @param subject tiêu đề email
	 * @param body    nội dung email
	 * @throws MessagingException lỗi gửi email
	 */

	void queue(MailInfo mail);

	/**
	 * Tạo MailInfo và xếp vào hàng đợi
	 * 
	 * @param to      email người nhận
	 * @param subject tiêu đề email
	 * @param body    nội dung email
	 */
	

	void send(String from, String to, String[] cc, String[] bcc, String subject, String body, String[] attachments)
			throws MessagingException;

	void queue(String from, String to, String[] cc, String[] bcc, String subject, String body, String[] attachments);

}
