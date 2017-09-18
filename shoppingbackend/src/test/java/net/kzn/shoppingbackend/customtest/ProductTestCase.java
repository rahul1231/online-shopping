package net.kzn.shoppingbackend.customtest;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/*
import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;
*/

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	
	 @Autowired
	private static ProductDAO productDAO;
	
	
	private Product product;

	
	@BeforeClass
	public static void init() {
		
		context=new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend.customtest.*");
		context.refresh();
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	
	@Test
	public void testAddProduct() {
		
		product=new Product();
		
		product.setName("Television");
		product.setDescription("This is some description for television!");
		product.setImageURL("CAT_1.png");
		
		assertEquals("Successfully added product inside the table!",true,productDAO.add(product));
		
	}
}
