package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.Employeedao;
import mvc.dto.Employee;

@Controller
public class EmployeeController {

	@Autowired
	Employee emp;
	
	@Autowired
	Employeedao dao;
	
	@GetMapping("load")
	public ModelAndView loadEmployee()
	{
		ModelAndView mv=new ModelAndView("Signup.jsp");
		
		mv.addObject("emp",emp);
		return mv;
	}
	
	@PostMapping("signup")
	public ModelAndView saveEmployee(@ModelAttribute Employee emp)
	{
		
		dao.saveEmployee(emp);
      
		ModelAndView mv=new ModelAndView("Login.jsp");
		mv.addObject("msg","Account created Successfully");
		return mv;
		
		
	}
	@PostMapping("Login")
	public ModelAndView login(@RequestParam String email,@RequestParam String password)
	{
		ModelAndView mv=new ModelAndView();
		Employee empp=dao.login(email);
		if(empp==null)
		{
			mv.setViewName("Login.jsp");
			mv.addObject("msg","Invalid email");
		}
		else
		{
			if(password.equals(empp.getPassword()))
			{
				mv.setViewName("Result.jsp");
				mv.addObject("list",dao.fetchAll());
				mv.addObject("msg","Logged successfully");
			}
			else
			{
				mv.setViewName("Login.jsp");
				mv.addObject("msg","Invalid Password");
			}
		}
		return mv;
	}
	
	@RequestMapping("delete")
	public ModelAndView delete(@RequestParam int id)
	{
		dao.delete(id);
		ModelAndView mv=new ModelAndView("Result.jsp");
		mv.addObject("list",dao.fetchAll());
		mv.addObject("msg","Deleted successfully");
		return mv;
	}
	
	@RequestMapping("edit")
	public ModelAndView edit(@RequestParam int id)
	{
		ModelAndView mv=new ModelAndView("Edit.jsp");
		mv.addObject("emp",dao.find(id));
		return mv;
	}
	
	@RequestMapping("update")
	public ModelAndView updateEmployee(@ModelAttribute Employee emp)
	{
		dao.updateEMployee(emp);
		ModelAndView mv=new ModelAndView("Result.jsp");
		mv.addObject("list",dao.fetchAll());
		mv.addObject("msg","Account  updated successfully");
		return mv;
	}
}
