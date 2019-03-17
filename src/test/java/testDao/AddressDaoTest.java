package testDao;

import java.lang.String;
import org.junit.runner.RunWith;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.test.context.ContextConfiguration; 
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner; 
import org.springframework.transaction.annotation.Transactional;
import entiy.Address;
import dao.AddressDao;


@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration({"file:src/main/resources/spring/spring-dao.xml"}) 
@Transactional 

public class AddressDaoTest {

	private AddressDao ad;
	
	public void testttt() {
	String s = ad.quaryName("620922201");
	System.out.println(s);
	
	}
}
