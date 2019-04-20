/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers.webservice;

import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import model.dto.SearchCriteria;
import model.entity.Product;
import model.service.SearchService;

/**
 *
 * @author Mohamed
 */
@Path("/sideSearch")
public class SideSearch {

    SearchService service = new SearchService();
    SearchCriteria searchCriteria = new SearchCriteria();

    @GET
    public String getSelectedCategoriesItems(@Context HttpServletRequest request,
            @QueryParam("categories") String selectedCategories,@QueryParam("show") String showNumber) {
        
        int numberOfShownResults = Integer.parseInt(showNumber);
        ArrayList<String> selectedCategoriesList = new Gson().fromJson(selectedCategories, ArrayList.class);
        List<Product> retrievedProducts = service.getSearchResult(selectedCategoriesList,numberOfShownResults);
        request.getSession(false).setAttribute("showNumber", showNumber);
        request.getSession(false).setAttribute("searchedResults", retrievedProducts);
        
        return "New Products";
    }
}
