package entiy;

public class consumer {
	
	private long consumerId;
	private String name;
	private String telNum;
	private boolean sex;
	private String password;
	
	public consumer() {
		
	}
	public consumer(long consumerId, String name, String telNum, boolean sex, String password) {
		super();
		this.consumerId = consumerId;
		this.name = name;
		this.telNum = telNum;
		this.sex = sex;
		this.password = password;
	}
	
	public long getConsumerId() {
		return consumerId;
	}
	public void setConsumerId(long consumerId) {
		this.consumerId = consumerId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTelNum() {
		return telNum;
	}
	public void setTelNum(String telNum) {
		this.telNum = telNum;
	}
	public boolean isSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "consumer [consumerId=" + consumerId + ", name=" + name + ", telNum=" + telNum + ", sex=" + sex
				+ ", password=" + password + "]";
	}
	
	
}