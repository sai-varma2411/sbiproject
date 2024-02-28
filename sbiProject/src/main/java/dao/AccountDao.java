package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.Account;

public class AccountDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("sai");
	EntityManager entityManager= entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public Account insert(Account account)
	{
		entityTransaction.begin();
		entityManager.persist(account);
		entityTransaction.commit();
		return account;
	}
	
	public Account fetchByEmail(String email)
	{
		Query query=entityManager.createQuery("select s from Account s where s.email=?1");
		query.setParameter(1, email);
		Account account=(Account) query.getSingleResult();
		return account;
	}
	
	public Account fetchById(int id)
	{
		 Account account=entityManager.find(Account.class, id);
		 return account;
	}
	public Account updateBalance(int id,Account  account)
	{
			account.setId(id);
			entityTransaction.begin();
			entityManager.merge(account);
			entityTransaction.commit();
			return account;
	}

}
