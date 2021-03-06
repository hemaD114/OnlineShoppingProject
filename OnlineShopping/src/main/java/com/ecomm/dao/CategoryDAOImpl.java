package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Category;

@Transactional
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	public boolean addCategory(Category category) {
		try {
			Session session = sessionFactory.getCurrentSession();
			System.out.println("Session Created");
			System.out.println("category Id:" + category.getCategoryId());
			session.save(category);
			// session.close();
			System.out.println("Category Added");

			return true;
		} catch (Exception e) {
			System.out.println("Exception Arised:" + e);
			return false;
		}
	}

	

	public boolean updateCategory(Category category) {
		try {
//			Session session = sessionFactory.openSession();
//			System.out.println("Session Created");
//			System.out.println("category Id:" + category.getCategoryId());
//			session.update(category);
//			session.close();
//			System.out.println("Category Updated");
			sessionFactory.getCurrentSession().update(category);

			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public Category getCategory(int categoryId) {
		Session session = sessionFactory.openSession();
		Category category = (Category) session.get(Category.class, categoryId);
		session.close();
		return category;
	}

	public List<Category> retriveCategories() {
		Session session = sessionFactory.openSession();
		List<Category> categoryList = (List<Category>) session.createQuery("from Category").list();
		session.close();
		return categoryList;
	}
	public boolean deleteCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().delete(category);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
