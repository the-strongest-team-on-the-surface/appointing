package entiy;

public class AppointingInfo {
	private String storeName;
	private String time;
	private String baberName;
	private String serviceName;
	private int price;
	private String status;
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getBaberName() {
		return baberName;
	}
	public void setBaberName(String baberName) {
		this.baberName = baberName;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "AppointingInfo [storeName=" + storeName + ", time=" + time + ", baberName=" + baberName
				+ ", serviceName=" + serviceName + ", price=" + price + ", status=" + status + "]";
	}
}
