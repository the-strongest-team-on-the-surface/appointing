package daotest;

import entiy.Address;
import dao.AddressDao;
import org.junit.Test; 
import org.junit.runner.RunWith; 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.test.context.ContextConfiguration; 
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner; 
import org.springframework.transaction.annotation.Transactional;


@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration({"/spring/spring-dao.xml"})
@Transactional
public class addressDaoTest {

	@Autowired 
	private AddressDao s;
	
	@Test
	public void testt() {
		String ss = s.quaryName("110101001");
		System.out.println(ss);
	}

}
