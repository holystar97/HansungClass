package kr.ac.hansung.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.ClassDao;
import kr.ac.hansung.model.ClassInfo;


@Service
public class ClassService {

	@Autowired
	private ClassDao classDao;
	
	public List<ClassInfo> getCurrent(){
		return classDao.getClasses();
	}
	public List<ClassInfo> getCertainCurrent(int year, int semester){
		return classDao.getCertainClasses(year, semester);
	}

	public void insert(ClassInfo course) {
		classDao.insert(course);
	}
}
