package com.mfu.web.controller;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mfu.user.User;
import com.mfu.user.UserService;

@Controller
public class loginController {
	@EJB(mappedName = "ejb:/MFUAlumniEJB//UserFacadeImplement!com.mfu.user.UserService")
	UserService userServ;

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, Principal principal) {

		String name = principal.getName();

		model.addAttribute("username", name);

		model.addAttribute("message", "Spring Security Custom Form example");
		return "listUser.do";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {

		return "login.jsp";

	}

	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {

		model.addAttribute("error", "true");
		return "login.jsp";

	}

	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public String createForm(HttpSession session, HttpServletRequest request,
			ModelMap modelMap) {

		String x;

		if (request.isUserInRole("ROLE_ADMIN")) {
			x = "index.do";
		} else if (request.isUserInRole("ROLE_USER")) {
			x = "indexAssociation.do";
		}
		else {
			x = "alumni.do";
		}
		return x;
	}

}
