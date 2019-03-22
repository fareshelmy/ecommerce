package model.dao.interfaces;

import java.util.List;
import model.entity.Category;

/**
 *
 * @author Zainab
 */
public interface CategoryDAO {
    void persist(Category category);
    List<Category> retrieveByName(String product_name);
    void update(Category category);
    void delete(int id);
}
