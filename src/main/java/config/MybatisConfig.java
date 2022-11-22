package config;

import java.beans.PropertyVetoException;
import java.io.InputStream;
import javax.sql.DataSource;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import dao.AddressDaoImple;
import dao.CartDaoImple;
import dao.MemberDaoImple;
import dao.OrderDaoImple;
import dao.PaymentDaoImple;
import dao.ProductDaoImple;
import dao.QnaDaoImple;
//import dao.ReviewDaoImple;

@Configuration
public class MybatisConfig {
	// 생성자로 MyBatis 설정해주기 (처음으로 작업해야할 코드. 데이터베이스에 접근할 수 있는 것)
	private SqlSessionFactory sqlSessionFactory;
	public MybatisConfig() {
		try {
			String resource="dao/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e) {e.printStackTrace();}
	}
	
	@Bean
	public DataSource dataSource() {
		ComboPooledDataSource dataSource = new ComboPooledDataSource();
		try {
			dataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
		}catch (PropertyVetoException e) {
			throw new RuntimeException(e);
		}
		dataSource.setJdbcUrl("jdbc:mysql://146.56.44.213:3307/waitdo");
		dataSource.setUser("admin");
		dataSource.setPassword("Admin1439!");
		return dataSource;
	}
	@Bean
	public MemberDaoImple memberDao() {
		MemberDaoImple member = new MemberDaoImple();
		member.setDataSource(dataSource(), sqlSessionFactory);
		return member;
	}
	@Bean
	public ProductDaoImple productDao() {
		ProductDaoImple product = new ProductDaoImple();
		product.setDataSource(dataSource(), sqlSessionFactory);
		return product;
	}
	@Bean
	public CartDaoImple cartDao() {
		CartDaoImple cart = new CartDaoImple();
		cart.setDataSource(dataSource(), sqlSessionFactory);
		return cart;
	}
	@Bean
	public OrderDaoImple orderDao() {
		OrderDaoImple orders = new OrderDaoImple();
		orders.setDataSource(dataSource(), sqlSessionFactory);
		return orders;
	}
	@Bean
	public OrderDaoImple orderDetailDao() {
		OrderDaoImple orderdetail = new OrderDaoImple();
		orderdetail.setDataSource(dataSource(), sqlSessionFactory);
			return orderdetail;
	}
	@Bean
	public QnaDaoImple qnaDao() {
		QnaDaoImple qna = new QnaDaoImple();
		qna.setDataSource(dataSource(), sqlSessionFactory);
		return qna;
	}
	
	@Bean
	public AddressDaoImple addressDao() {
		AddressDaoImple address = new AddressDaoImple();
		address.setDataSource(dataSource(), sqlSessionFactory);
		return address;
	}
	@Bean
	public PaymentDaoImple paymentDao() {
		PaymentDaoImple payment = new PaymentDaoImple();
		payment.setDataSource(dataSource(), sqlSessionFactory);
		return payment;
	}
}
