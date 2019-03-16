package entiy;

public class Appointing {
	
	private int consumerId;
	private int baberId;
	private int appointingId;
	private int serviceId;
	private String appointedTime;
	private String status;
	
	public Appointing() {
		
	}

	public Appointing(int consumerId, int baberId, int appointingId, int serviceId, String appointedTime,
			String status) {
		super();
		this.consumerId = consumerId;
		this.baberId = baberId;
		this.appointingId = appointingId;
		this.serviceId = serviceId;
		this.appointedTime = appointedTime;
		this.status = status;
	}

	public int getConsumerId() {
		return consumerId;
	}

	public void setConsumerId(int consumerId) {
		this.consumerId = consumerId;
	}

	public int getBaberId() {
		return baberId;
	}

	public void setBaberId(int baberId) {
		this.baberId = baberId;
	}

	public int getAppointingId() {
		return appointingId;
	}

	public void setAppointingId(int appointingId) {
		this.appointingId = appointingId;
	}

	public int getServiceId() {
		return serviceId;
	}

	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}

	public String getAppointedTime() {
		return appointedTime;
	}

	public void setAppointedTime(String appointedTime) {
		this.appointedTime = appointedTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Appointing [consumerId=" + consumerId + ", baberId=" + baberId + ", appointingId=" + appointingId
				+ ", serviceId=" + serviceId + ", appointedTime=" + appointedTime + ", status=" + status + "]";
	}
	

	
}