package servlet.users.admin;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.dao.CategoryDAO;
import model.dao.ProductDAO;
import model.entity.Category;
import model.entity.Product;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(urlPatterns = {"/insertProductServlet"}, name = "insertProductServlet")
@MultipartConfig
public class InsertProductServlet extends HttpServlet {

    private static int productCounter = 1;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        CategoryDAO categoryDAO = new CategoryDAO();
        Category category = categoryDAO.retrieve(req.getParameter("selected_category"));
        Product product = new Product();
        try {
            BeanUtils.populate(product, req.getParameterMap());

        } catch (IllegalAccessException ex) {
            ex.printStackTrace();
        } catch (InvocationTargetException ex) {
            ex.printStackTrace();
        }
        product.setCategory(category);

        ProductDAO productDAO = new ProductDAO();
        HttpSession session = req.getSession(true);
        String productIdSession = (String) session.getAttribute("productIdSession");
        ServletContext context = getServletContext();
        if (productIdSession == null) {
            /////////////////////////////////////////
            Part file = req.getPart("image");
            if (file != null && file.getSize() > 0) {
                context.log("if: " + file);
                product.setImage(getImagePath(req, resp));
            } else {
                context.log("in else");
                product.setImage("img\\products\\No_Image_Available.jpg");
            }
            context.log(productIdSession);
            productDAO.persist(product);
          //  resp.sendRedirect("ProductListServlet");
            req.getRequestDispatcher("ProductListServlet").forward(req, resp);

        } else {
            Part file = req.getPart("image");
            if (file != null && file.getSize() > 0) {
                context.log("if: " + file);
                product.setImage(getImagePath(req, resp));

            } else {
                context.log("in else if");
                product.setImage(req.getParameter("productImage"));
            }
            // if(req.getPart("image")==null){
            //  product.setImage(req.getParameter("productImage"));
            //  else{product.setImage(getImagePath(req, resp));}
            context.log(productIdSession);
            product.setId(Integer.parseInt(productIdSession));
            productDAO.update(product);
            req.getRequestDispatcher("ProductListServlet").forward(req, resp);
        }
    }

    private String getImagePath(HttpServletRequest req, HttpServletResponse resp) {
        String imageName = null;
        OutputStream out = null;
        InputStream imageContent = null;
        String savePath = null;
        try {
            final Part imagePart = req.getPart("image");
            String realPath = req.getServletContext().getRealPath("");
            String appendedPath ="img" + File.separator + "products" + File.separator;
            imageName = appendedPath + "product" + new Date().getSeconds() + ".jpg";
            productCounter++;

            savePath = realPath + appendedPath;

            final PrintWriter writer = resp.getWriter();

            try {
                File imageSaveDirectory = new File(savePath);
                if (!imageSaveDirectory.exists()) {
                    imageSaveDirectory.mkdir();
                }

                out = new FileOutputStream(new File(realPath + imageName));
                imageContent = imagePart.getInputStream();

                int read = 0;
                final byte[] bytes = new byte[2048];

                while ((read = imageContent.read(bytes)) != -1) {
                    out.write(bytes, 0, read);
                }
            } catch (FileNotFoundException fne) {
                Logger.getLogger(InsertProductServlet.class.getName()).log(Level.SEVERE, null, fne);
            } catch (IOException ex) {
                Logger.getLogger(InsertProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException ex) {
                        Logger.getLogger(InsertProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                if (imageContent != null) {
                    try {
                        imageContent.close();
                    } catch (IOException ex) {
                        Logger.getLogger(InsertProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                if (writer != null) {
                    writer.close();
                }
            }
        } catch (IOException ex) {
            Logger.getLogger(InsertProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(InsertProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return imageName;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        session.setAttribute("productIdSession", null);
        req.getRequestDispatcher("/admin/product-edit.jsp").forward(req, resp);
    }
}
