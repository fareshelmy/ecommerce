/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service.webservice;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author Mohamed
 */
@Path("/sideSearch")
public class SideSearch {
    
    
    @GET
    @Consumes(MediaType.APPLICATION_JSON)
    public void getSelectedCategoriesItems(@Context HttpServletRequest request,
            @QueryParam("categories") String selectedCategories){
        
        System.out.println(selectedCategories);
    }
}
