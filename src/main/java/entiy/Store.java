package entiy;

public class Store {
	 
	private long storeId;
	private String name;
	private long addressId;
	private String telNum;
	private String password;
	private String detailedAddress;
	
	public Store() {
		
	}

	public Store(long storeId, String name, long addressId, String telNum, String password, String detailedAddress) {
		super();
		this.storeId = storeId;
		this.name = name;
		this.addressId = addressId;
		this.telNum = telNum;
		this.password = password;
		this.detailedAddress = detailedAddress;
	}

	public long getStoreId() {
		return storeId;
	}

	public void setStoreId(long storeId) {
		this.storeId = storeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getAddressId() {
		return addressId;
	}

	public void setAddressId(long addressId) {
		this.addressId = addressId;
	}

	public String getTelNum() {
		return telNum;
	}

	public void setTelNum(String telNum) {
		this.telNum = telNum;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDetailedAddress() {
		return detailedAddress;
	}

	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}

	@Override
	public String toString() {
		return "Store [storeId=" + storeId + ", name=" + name + ", addressId=" + addressId + ", telNum=" + telNum
				+ ", password=" + password + ", detailedAddress=" + detailedAddress + "]";
	}
	
}