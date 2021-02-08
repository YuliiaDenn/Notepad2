package main;

import util.HibernateUtil;
import entity.Address;
import entity.User;
import service.Notepad;

public class Main {

	public static void main(String[] args) {
		
		User user = new User();
		Notepad note = new Notepad();
//		Address address = new Address();
//		address.setCity("two");
//		address.setStreet("one");
//		address.setBuildingNumber("one");
//		user.setAddress(address);
//		user.setName("one");
//		user.setSecondName("one");
//		user.setSurname("one");
//		user.setPhoneNumber("one");
//		note.addRecord(user);
		
//		user = note.chooseRecordById(1);
		
//		Address address = user.getAddress();
//		address.setBuildingNumber("1");
//		address.setStreet("blablabla");
//		note.update(user);
		
//		System.out.println(user);
		
		System.out.println(note.chooseAllRecords());
//		System.out.println(note.chooseRecordById(7));
//		System.out.println(note.chooseRecordsByName("Ivan"));
//		System.out.println(note.chooseRecordsBySurname("Petrov"));
		
		HibernateUtil.close();
	}

}
