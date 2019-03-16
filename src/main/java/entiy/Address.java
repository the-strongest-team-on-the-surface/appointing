package entiy;

public class Address {
	
	private String code;
	private String parentId;
	private String name;
	private int level;
	private int id;
	
	public Address() {
		
	}

	public Address(String code, String parentId, String name, int level, int id) {
		super();
		this.code = code;
		this.parentId = parentId;
		this.name = name;
		this.level = level;
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public String getParentId() {
		return parentId;
	}

	public String getName() {
		return name;
	}

	public int getLevel() {
		return level;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Address [code=" + code + ", parentId=" + parentId + ", name=" + name + ", level=" + level + ", id=" + id
				+ "]";
	}
	
	
	
}