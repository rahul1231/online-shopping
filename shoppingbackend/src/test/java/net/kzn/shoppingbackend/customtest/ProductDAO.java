package net.kzn.shoppingbackend.customtest;

import java.util.List;

public interface ProductDAO {

	Product get(int id);
	List<Product> list();
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
}
