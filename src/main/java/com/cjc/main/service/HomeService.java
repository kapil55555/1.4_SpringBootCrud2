package com.cjc.main.service;

import java.util.List;

import com.cjc.main.model.Student;

public interface HomeService {

	public void saveData(Student stu);
	public void loginCheck(String un, String ps);
	public List<Student> displayAllData();
    public void deleteData(Student stu);
    public Student editData(int uid);
}
