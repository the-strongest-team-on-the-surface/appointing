package entiy;

public class Appointing {
	
	private long consumerId;
	private long baberId;
	private long appointingId;
	private long serviceId;
	private String appointedTime;
	private String endTime;
	private String status;
	
	public Appointing() {
		
	}
	
	public Appointing(long consumerId, long baberId, long appointingId, long serviceId, String appointedTime,
			String endTime, String status) {
		super();
		this.consumerId = consumerId;
		this.baberId = baberId;
		this.appointingId = appointingId;
		this.serviceId = serviceId;
		this.appointedTime = appointedTime;
		this.endTime = endTime;
		this.status = status;
	}

	public long getConsumerId() {
		return consumerId;
	}

	public void setConsumerId(long consumerId) {
		this.consumerId = consumerId;
	}

	public long getBaberId() {
		return baberId;
	}

	public void setBaberId(long baberId) {
		this.baberId = baberId;
	}

	public long getAppointingId() {
		return appointingId;
	}

	public void setAppointingId(long appointingId) {
		this.appointingId = appointingId;
	}

	public long getServiceId() {
		return serviceId;
	}

	public void setServiceId(long serviceId) {
		this.serviceId = serviceId;
	}

	public String getAppointedTime() {
		return appointedTime;
	}

	public void setAppointedTime(String appointedTime) {
		this.appointedTime = appointedTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "appointing [consumerId=" + consumerId + ", baberId=" + baberId + ", appointingId=" + appointingId
				+ ", serviceId=" + serviceId + ", appointedTime=" + appointedTime + ", endTime=" + endTime + ", status="
				+ status + "]";
	}
	
	
	
	
}