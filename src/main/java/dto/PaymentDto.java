package dto;

import java.sql.Timestamp;

public class PaymentDto {
	private int pyseq;
	private String id;
	private int oseq;
	private String card_1;
	private String card_2;
	private String bank_account;
	private String result;
	private Timestamp indate;
	public int getPyseq() {
		return pyseq;
	}
	public void setPyseq(int pyseq) {
		this.pyseq = pyseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getOseq() {
		return oseq;
	}
	public void setOseq(int oseq) {
		this.oseq = oseq;
	}
	public String getCard_1() {
		return card_1;
	}
	public void setCard_1(String card_1) {
		this.card_1 = card_1;
	}
	public String getCard_2() {
		return card_2;
	}
	public void setCard_2(String card_2) {
		this.card_2 = card_2;
	}
	public String getBank_account() {
		return bank_account;
	}
	public void setBank_account(String bank_account) {
		this.bank_account = bank_account;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	
	
}
