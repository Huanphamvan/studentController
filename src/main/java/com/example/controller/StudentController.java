package com.example.controller;

import com.example.model.Classroom;
import com.example.model.Student;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
@Autowired
    StudentService studentService ;

@GetMapping("/home")
public ModelAndView showAll() {
    List<Student> studentList = studentService.findAll();
    Classroom classroom = new Classroom(1,"Toan");
    Student student1 = new Student(15,"huanpham","phamvanhuan.bk@gmail.com","26-03-1990","haiphong","0985683486",classroom);
    Student student2 = new Student(38,"trungpham","phambaotrung.bk@gmail.com","10-03-1990","hatinh","0985683895",classroom);
    studentList.add(student1);
    studentList.add(student2);
    ModelAndView modelAndView = new ModelAndView("home");
    modelAndView.addObject("studentList", studentList);
    return modelAndView;
}
    @GetMapping("/create")
    public ModelAndView showAdd(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        ModelAndView modelAndView = new ModelAndView("create");
        return modelAndView;
    }
    @PostMapping("/create")
    public String Add(@ModelAttribute("student") Student student) {
        System.out.println(student);
        studentService.add(student);
        return "redirect:/student/home";
    }
    @GetMapping("/edit&id={id}")
    public ModelAndView showUpdate(@PathVariable int id, Model model) {
        Student student = studentService.StudentFindById(id);
        model.addAttribute("student",student);
        ModelAndView modelAndView = new ModelAndView("edit");

        return modelAndView;
    }
    @PostMapping("edit&id={id}")
    public String update(Student student) {
        System.out.println(student.getId());
        studentService.edit(student.getId(), student);
        return "redirect:/student/home";
    }
    @GetMapping("delete&id={id}")
    public String delete(@PathVariable("id") int id) {
        studentService.delete(id);
        return "redirect:/student/home";
    }


}
