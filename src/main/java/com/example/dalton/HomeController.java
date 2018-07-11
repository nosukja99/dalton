package com.example.dalton;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class HomeController {

    @Autowired
    StudentRepository studentRepository;

    @Autowired
    MajorRepository majorRepository;

    @Autowired
    InstructorRepository instructorRepository;

    @Autowired
    DepartmentRepository departmentRepository;

    @RequestMapping("/")
    public String index()
    {
        return "index";
    }

    @GetMapping("/addStudent")
    public String signup(Model model)
    {
        model.addAttribute("student", new Student());
        model.addAttribute("majors", majorRepository.findAll());
        return "signup";
    }

    @PostMapping("/addStudent")
    public String processSignUp(@Valid @ModelAttribute Student student, BindingResult result)
    {
        if(result.hasErrors())
        {
            return "signup";
        }
        //System.out.println("######"+student.getId());
        studentRepository.save(student);
        student.setStudentNum(student.getId());
        //System.out.println("######"+student.getId());
        studentRepository.save(student);
        return "redirect:/";
    }

    @GetMapping("/loginsystem")
    public String login(Model model)
    {
       return "login";
    }

    @PostMapping("/loginsystem")
    public String processLogin(HttpServletRequest request, Model model)
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        if (role.equals("student")) {
            if (studentRepository.countByUserNameAndPassword(username, password) > 0) {
                model.addAttribute("student", studentRepository.findByUserNameContainingIgnoreCaseAndPassword(username, password).iterator().next());
                return "studentMainPage";
            } else {
                return "login";
            }
        }
        else if (role.equals("instructor")) {
            if (instructorRepository.countByUserNameAndPassword(username, password) > 0) {
                model.addAttribute("instructor", instructorRepository.findAllByUserNameContainingIgnoreCaseAndPassword(username, password).iterator().next());
                return "instructorMainPage";
            } else {
                return "login";
            }
        }
        else if (role.equals("admin")) {
            if (username.equals("admin") && password.equals("password")) {
                model.addAttribute("students", studentRepository.findAll());
                return "adminMainPage";
            } else {
                return "login";
            }
        }
        else
            return "login";
    }

    @RequestMapping("/updaterole/{id}")
    public String ChangeRole(@PathVariable("id") long id, Model model)
    {
        Student student = studentRepository.findById(id).get();
        Instructor instructor = new Instructor();
        instructor.setInstructorName(student.getStudentName());
        instructor.setUserName(student.getUserName());
        instructor.setPassword(student.getPassword());
        studentRepository.deleteById(id);
        //System.out.println("$$$$$$$$$$"+instructor.getInstructorName());
        model.addAttribute("instructor", instructor);
        model.addAttribute("departments", departmentRepository.findAll());
        return "instructorform";
    }

    @RequestMapping("/addInstructor")
    public String processInstructor(@ModelAttribute Instructor instructor, Model model)
    {
        instructorRepository.save(instructor);
        //System.out.println("$$$$$$$$$$"+instructor.getId());
        instructor.setEmployeeNum(instructor.getId());
        instructorRepository.save(instructor);
        model.addAttribute("students", studentRepository.findAll());
        return "adminMainPage";
    }

    @RequestMapping("/showInstructorlist")
    public String showInstructorList(Model model)
    {
        model.addAttribute("instructors", instructorRepository.findAll());
        return "instructorlist";
    }

}
