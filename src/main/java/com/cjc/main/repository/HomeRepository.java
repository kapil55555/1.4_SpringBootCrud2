package com.cjc.main.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cjc.main.model.Student;

@Repository
public interface HomeRepository extends CrudRepository<Student, Integer>{

	//custom method 
	public void findAllByUnameAndPassword(String un, String ps);
	public Student findAllByUid(int uid);
}
