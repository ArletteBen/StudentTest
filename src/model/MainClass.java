package model;

import dao.HibernateUtil;

public class MainClass {

	public static void main(String[] args) {
		 HibernateUtil.getSessionFactory().openSession();
		   HibernateUtil.getSessionFactory().close();
	}

}
