package dto;

import java.sql.Timestamp;

public class QnaDto {
	private int qseq;
	private String subject;
	private String content;
	private String resubject;
	private String reply;
	private String id;
	private String reid;
	private Timestamp indate;
	private Timestamp moddate;
	
	public int getQseq() {
		return qseq;
	}
	public QnaDto setQseq(int qseq) {
		this.qseq = qseq;
		return this;
	}
	public String getSubject() {
		return subject;
	}
	public QnaDto setSubject(String subject) {
		this.subject = subject;
		return this;
	}
	public String getContent() {
		return content;
	}
	public QnaDto setContent(String content) {
		this.content = content;
		return this;
	}
	public String getResubject() {
		return resubject;
	}
	public QnaDto setResubject(String resubject) {
		this.resubject = resubject;
		return this;
	}
	public String getReply() {
		return reply;
	}
	public QnaDto setReply(String reply) {
		this.reply = reply;
		return this;
	}
	public String getId() {
		return id;
	}
	public QnaDto setId(String id) {
		this.id = id;
		return this;
	}
	public String getReid() {
		return reid;
	}
	public QnaDto setReid(String reid) {
		this.reid = reid;
		return this;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public QnaDto setIndate(Timestamp indate) {
		this.indate = indate;
		return this;
	}
	public Timestamp getModdate() {
		return moddate;
	}
	public QnaDto setModdate(Timestamp moddate) {
		this.moddate = moddate;
		return this;
	}
}
