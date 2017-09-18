package net.kzn.shoppingbackend.customtest;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/*
import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;
*/

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> list() {
		
		String selectActiveProduct="FROM Product WHERE active= :active";
		
		Query query=sessionFactory.getCurrentSession().createQuery(selectActiveProduct);
		
		query.setParameter("active", true);
		
		return query.getResultList();
	}

	/*
	 * Getting single product based on id
	 */
	@Override
	public Product get(int id) {

		return sessionFactory.getCurrentSession().get(Product.class,Integer.valueOf(id));
	}

	@Override

	public boolean add(Product product) {

		try {
			// add the product to the database table
			sessionFactory.getCurrentSession().persist(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	/*
	 * Updating a single product
	 */
	@Override
	public boolean update(Product product) {
		try {
			// add the product to the database table
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Product product) {
		
		product.setActive(false);
		
		try {
			// add the product to the database table
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
