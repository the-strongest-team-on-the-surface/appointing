package entiy;

public class Consumer {
	
	private int consumerId;
	private String name;
	private String telNum;
	private boolean sex;
	private String password;
	
	public Consumer() {
		
	}
	public Consumer(int consumerId, String name, String telNum, boolean sex, String password) {
		super();
		this.consumerId = consumerId;
		this.name = name;
		this.telNum = telNum;
		this.sex = sex;
		this.password = password;
	}
	
	public int getConsumerId() {
		return consumerId;
	}
	public void setConsumerId(int consumerId) {
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