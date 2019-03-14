package entiy;

public class Address {
	
	private String province;
	private String city;
	private String district;
	private long addressId;
	
	public Address() {
		
	}
	
	public Address(String province, String city, String district, long addressId) {
		super();
		this.province = province;
		this.city = city;
		this.district = district;
		this.addressId = addressId;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public long getAddressId() {
		return addressId;
	}

	public void setAddressId(long addressId) {
		this.addressId = addressId;
	}

	@Override
	public String toString() {
		return "address [province=" + province + ", city=" + city + ", district=" + district + ", addressId="
				+ addressId + "]";
	}
	
	
	
}