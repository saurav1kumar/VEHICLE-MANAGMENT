package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class VehicleController {
	@Autowired
	Vehiclerepo repo;

	@RequestMapping("/login")
	String login() {
		return "login.jsp";
	}

	@RequestMapping("/validate")
	String validateUser(String email, String password) {
		if (email.equals("blacksaura2@gmail.com") && password.equals("kumar")) {
			return "management.jsp";
		}
		return "error.jsp";
	}


	@RequestMapping("/save")
	String save1() {
		return "AddVehicle.jsp";
	}

	@RequestMapping("/mainpage")
	String main() {
		return "management.jsp";
	}

	@RequestMapping("/saveData")
	String management(Vehicle v) {
		repo.save(v);
		return "AddVehicle.jsp";
	}

	@RequestMapping("details")
	String DETAIL() {
		return "details.jsp";
	}

	@RequestMapping("MAINPAGE")
	String mainpa() {
		return "management.jsp";
	}

	@RequestMapping("/VehicleDetailsById")
	String search(HttpSession h, Integer id) {
		Vehicle v = repo.findById(id).orElse(null);
		h.setAttribute("id", v.getId());
		h.setAttribute("price", v.getPrice());
		h.setAttribute("model", v.getModel());
		h.setAttribute("color", v.getColor());
		return "view.jsp";
	}

	@RequestMapping("delete")
	String deletepage() {
		return "delete.jsp";
	}

	@RequestMapping("/mainpages")
	String mainp() {
		return "management.jsp";
	}

	@RequestMapping("deleteVehicleById")
	String delete(HttpSession h1, Integer id) {
		Vehicle v = repo.findById(id).orElse(null);
		if (v != null) {
			h1.setAttribute("message", id);
			repo.deleteById(id);
		} else {
			h1.setAttribute("message", "Invalid id");
		}
		return "delete.jsp";
	}
}
