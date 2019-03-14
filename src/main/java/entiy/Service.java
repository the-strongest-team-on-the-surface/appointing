package entiy;

public class Service {
	 
	private long serviceId;
	private String name;
	private String price;
	private int duration;
	private long baberId;
	
	public Service() {
		
	}
	
	public Service(long serviceId, String name, String price, int duration, long baberId) {
		super();
		this.serviceId = serviceId;
		this.name = name;
		this.price = price;
		this.duration = duration;
		this.baberId = baberId;
	}

	public long getServiceId() {
		return serviceId;
	}

	public void setServiceId(long serviceId) {
		this.serviceId = serviceId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public long getBaberId() {
		return baberId;
	}

	public void setBaberId(long baberId) {
		this.baberId = baberId;
	}

	@Override
	public String toString() {
		return "service [serviceId=" + serviceId + ", name=" + name + ", price=" + price + ", duration=" + duration
				+ ", baberId=" + baberId + "]";
	}
	
	
	
	
}