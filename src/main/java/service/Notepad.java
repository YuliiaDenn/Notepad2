package service;

import java.util.List;

import dao.AddressDao;
import dao.AddressDaoImpl;
import dao.UserDao;
import dao.UserDaoImpl;
import entity.Address;
import entity.User;

public class Notepad {

	UserDao recordUser = new UserDaoImpl();

	public void addRecord(User user) {
		recordUser.add(user);
	}

	public void changeRecord(User user) {
		recordUser.update(user);
	}

	public void deleteRecord(int id) {
		recordUser.delete(id);
	}

	public User chooseRecordById(int id) {
		return recordUser.getById(id);
	}

	public List<User> chooseAllRecords() {
		return recordUser.getAll();
	}

	public List<User> chooseRecordsByName(String name) {
		return recordUser.getByName(name);
	}

	public List<User> chooseRecordsBySurname(String surname) {
		return recordUser.getBySurname(surname);
	}

	public void update(User user) {
		recordUser.update(user);
	}

}
