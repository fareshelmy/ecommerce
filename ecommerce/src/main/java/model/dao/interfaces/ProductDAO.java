package model.dao.interfaces;

import java.util.List;
import model.entity.Product;

/**
 *
 * @author Mohamed Jamal
 */
public interface ProductDAO {
    
    public void persistProduct(Product product);
    public void updateProduce(Product product);
    public void deleteProduct(Product product);
    public Product retrieveProductById(int id);
    public List<Product> retrieveProductsByCategory(String category);
    
}
