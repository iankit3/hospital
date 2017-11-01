package com.hospital.controllers;

/**
 * Created by Ankit @iankit3 on 1/11/17.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class User extends HttpServlet {
    private static final long serialVersionUID = 1L;
    SFDAL sfdal=new SFDAL();

    public User() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        response.setContentType("text/html");
        response.setHeader("Access-Control-Allow-Origin", "*");
        PrintWriter out = response.getWriter();
        try {
            String result = sfdal.getTrending(keyparam);
            out.println(result);
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
