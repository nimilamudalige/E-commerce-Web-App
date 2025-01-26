package lk.ijse.ecomerce.dao.custom.impl;

import lk.ijse.ecomerce.dao.custom.CategoryDAO;
import lk.ijse.ecomerce.entity.Category;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAOImpl implements CategoryDAO {
    private final DataSource dataSource;

    public CategoryDAOImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public ArrayList<Category> getAll() throws SQLException, ClassNotFoundException {
        List<Category> categoryList = new ArrayList<>();
        try (Connection connection = dataSource.getConnection()) {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM categories");
            while (rs.next()) {
                Category category = new Category(
                        rs.getInt("category_id"),
                        rs.getString("name"),
                        rs.getString("description")
                );
                categoryList.add(category);
            }
        }
        return (ArrayList<Category>) categoryList;
    }
    public boolean resetAutoIncrement() throws SQLException, ClassNotFoundException {
        try (Connection connection = dataSource.getConnection()) {
            Statement stmt = connection.createStatement();
            stmt.execute("ALTER TABLE categories AUTO_INCREMENT = 1");
            return true;
        }
    }
    @Override
    public boolean add(Category category) throws SQLException, ClassNotFoundException {
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement stmt = connection.prepareStatement("INSERT INTO categories (name, description) VALUES (?, ?)");

            stmt.setString(1, category.getName());
            stmt.setString(2, category.getDescription());
            return stmt.executeUpdate() > 0;
        }
    }

    @Override
    public boolean update(Category category) throws SQLException, ClassNotFoundException {
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement stmt = connection.prepareStatement("UPDATE categories SET name=?, description=? WHERE category_id=?");
            stmt.setString(1, category.getName());
            stmt.setString(2, category.getDescription());
            stmt.setInt(3, category.getCategory_id());
            return stmt.executeUpdate() > 0;
        }
    }

    @Override
    public boolean exist(String id) throws SQLException, ClassNotFoundException {
        return false;
    }

    @Override
    public String generateNewID() throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public boolean delete(String id) throws SQLException, ClassNotFoundException {
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement stmt = connection.prepareStatement("DELETE FROM categories WHERE category_id=?");
            stmt.setString(1, id);
            boolean isDeleted = stmt.executeUpdate() > 0;
            if (isDeleted) {
                // Check if there are no more categories
                Statement checkStmt = connection.createStatement();
                ResultSet rs = checkStmt.executeQuery("SELECT COUNT(*) FROM categories");
                if (rs.next() && rs.getInt(1) == 0) {
                    // Reset auto-increment value
                    resetAutoIncrement();
                }
            }
            return isDeleted;
        }
    }

    @Override
    public Category search(String id) throws SQLException, ClassNotFoundException {
        try (Connection connection = dataSource.getConnection()) {
            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM categories WHERE category_id=?");
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Category(
                        rs.getInt("category_id"),
                        rs.getString("name"),
                        rs.getString("description")
                );
            }
            return null;
        }
    }

    @Override
    public <T> T searchByEmail(String name) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public <T> ArrayList<T> getEmails(String email) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public <T> T searchById(String id) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public <T> T searchByName(String name) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public String getLastId() throws SQLException, ClassNotFoundException {
        return null;
    }
}