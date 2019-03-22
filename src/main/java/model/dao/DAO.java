/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;
import java.util.List;
/**
 *
 * @author Lamiaa Abdrabou
 */
public interface DAO<T extends Entity> {
    public void persist(T entity);
    public void update(T entity);
    public void delete(T entity);
    public T retrieve(Object primaryKey);
    public List<T> getByColumnNames(Object primaryKey, List<String> columnNames);
    public List<T> getAll(Object entity);
}
