package com.profile;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="ProfileServlet", urlPatterns={"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

  @Override  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String studentID = request.getParameter("studentID");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobby = request.getParameter("hobby");
        String intro = request.getParameter("intro");
        
        if (hobby == null || hobby.trim().isEmpty()){
            hobby = "No hobby listed.";
        }
        
        request.setAttribute("userName", name);
        request.setAttribute("userStudentID", studentID);
        request.setAttribute("userProgram", program);
        request.setAttribute("userEmail", email);
        request.setAttribute("userHobby", hobby);
        request.setAttribute("userIntro", intro);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
        dispatcher.forward(request, response);
    }
    
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.sendRedirect("index.html");
 }
}