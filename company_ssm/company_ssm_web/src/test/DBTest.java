import com.it.ssm.domain.Company;
import com.it.ssm.service.ICompanyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.annotation.Resource;
import java.util.List;

@WebAppConfiguration("src/main/resources")
@RunWith(SpringJUnit4ClassRunner.class) // 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath*:applicationContext.xml" ,"classpath*:spring-mvc.xml"})
public class DBTest {


    @Resource
    private ICompanyService companyService = null;
    @Test
    public void test1(){
        List<Company> company = companyService.selectCompanyHot();
        for(Company c :company){
            System.out.println(company.toString());
        }


    }
}
