package com.example.service;

import com.example.model.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentService implements IStudentService<Student> {
    List<Student>studentList=new ArrayList<>();

    @Override
    public void add(Student student) {
        studentList.add(student);
    }

    @Override
    public void delete(int id) {
        int index = findById(id);
        studentList.remove(index);

    }

    @Override
    public void edit(int id, Student student) {
        int index = findById(id);
        studentList.set(index,student);

    }

    @Override
    public List<Student> findAll() {
        return studentList;
    }
    public int findById(int id) {
        for (int i = 0; i < studentList.size(); i++) {
            if (id == studentList.get(i).getId()) {
                return i;
            }
        }
        return -1;
    }
    public Student StudentFindById(int id){
        for (Student student:studentList) {
            if (id==student.getId()){
                return student;
            }
        }
        return null;
    }
}
