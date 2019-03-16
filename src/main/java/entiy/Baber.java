package entiy;

public class Baber {
	
	private int baberId;
	private String name;
	private String telNum;
	private boolean sex;
	private boolean isWorking;
	private int storeId;
	private String password;
	private String defaultWorkingTimePeriod;
	private String actualWorkingTimePeriod;
	
	public Baber() {
		
	}

	public Baber(int baberId, String name, String telNum, boolean sex, boolean isWorking, int storeId,
			String password, String defaultWorkingTimePeriod, String actualWorkingTimePeriod) {
		super();
		this.baberId = baberId;
		this.name = name;
		this.telNum = telNum;
		this.sex = sex;
		this.isWorking = isWorking;
		this.storeId = storeId;
		this.password = password;
		this.defaultWorkingTimePeriod = defaultWorkingTimePeriod;
		this.actualWorkingTimePeriod = actualWorkingTimePeriod;
	}

	public int getBaberId() {
		return baberId;
	}

	public void setBaberId(int baberId) {
		this.baberId = baberId;
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

	public boolean isWorking() {
		return isWorking;
	}

	public void setWorking(boolean isWorking) {
		this.isWorking = isWorking;
	}

	public int getStoreId() {
		return storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDefaultWorkingTimePeriod() {
		return defaultWorkingTimePeriod;
	}

	public void setDefaultWorkingTimePeriod(String defaultWorkingTimePeriod) {
		this.defaultWorkingTimePeriod = defaultWorkingTimePeriod;
	}

	public String getActualWorkingTimePeriod() {
		return actualWorkingTimePeriod;
	}

	public void setActualWorkingTimePeriod(String actualWorkingTimePeriod) {
		this.actualWorkingTimePeriod = actualWorkingTimePeriod;
	}

	@Override
	public String toString() {
		return "Baber [baberId=" + baberId + ", name=" + name + ", telNum=" + telNum + ", sex=" + sex + ", isWorking="
				+ isWorking + ", storeId=" + storeId + ", password=" + password + ", defaultWorkingTimePeriod="
				+ defaultWorkingTimePeriod + ", actualWorkingTimePeriod=" + actualWorkingTimePeriod + "]";
	}
	

	
}