package jdbc.daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import jdbc.models.Course;

public class CourseDao {
  static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
  static final String HOST = "localhost:3306";
  static final String SCHEMA = "database_design";
  static final String CONFIG = "serverTimezone=UTC";
  static final String DB_URL
      = "jdbc:mysql://"+HOST+"/"+SCHEMA+"?"+CONFIG;

  static final String USER = "dbDesign";
  static final String PASS = "dbDesign";

  static Connection connection = null;
  static PreparedStatement statement = null;

  public static Connection getConnection() {
    if (connection != null) {
      return connection;
    }
    try {
      Class.forName(JDBC_DRIVER);
      connection = DriverManager.getConnection(DB_URL, USER, PASS);
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return connection;
  }

  private static String FIND_ALL_COURSES = "SELECT * FROM courses;";
  private static String FIND_BY_ID = "SELECT * FROM courses WHERE id=?";
  private static String UPDATE_COURSE = "UPDATE courses SET title=? WHERE id=?";
  private static String CREATE_COURSE = "INSERT INTO courses VALUES (?,?)";

  public Integer creaseCouse(Course newCourse) {
    connection = getConnection();
    Integer status = -1;
    try {
      statement = connection.prepareStatement(CREATE_COURSE);
      statement.setInt(1, newCourse.getId());
      statement.setString(2, newCourse.getTitle());
      status = statement.executeUpdate();
    } catch (SQLException throwables) {
      throwables.printStackTrace();
    }
    return status;
  }

  public Integer updateCourse(Integer courseId, Course newCourse) {
    connection = getConnection();
    Integer status = -1;
    try {
      statement = connection.prepareStatement(UPDATE_COURSE);
      statement.setString(1, newCourse.getTitle());
      statement.setInt(2, courseId);
      status = statement.executeUpdate();
    } catch (SQLException throwables) {
      throwables.printStackTrace();
    }
    return status;
  }


  public Course findCourseById(Integer courseId) {
    connection = getConnection();
    try {
      statement = connection.prepareStatement(FIND_BY_ID);
      statement.setInt(1, courseId);
      ResultSet resultSet = statement.executeQuery();
      while(resultSet.next()) {
        Integer id = resultSet.getInt("id");
        String title = resultSet.getString("title");
        Course course = new Course(id, title);
        return course;
      }
    } catch (SQLException throwables) {
      throwables.printStackTrace();
    }
    return null;
  }

  public List<Course> findAllCourses() {
    List<Course> courses = new ArrayList<>();
    connection = getConnection();
    try {
      statement = connection.prepareStatement(FIND_ALL_COURSES);
      ResultSet resultSet = statement.executeQuery();
      while(resultSet.next()) {
        Integer id = resultSet.getInt("id");
        String title = resultSet.getString("title");
        Course course = new Course(id, title);
        courses.add(course);
      }

    } catch (SQLException throwables) {
      throwables.printStackTrace();
    }
    return courses;
  }

  public static void closeConnection() {
    try {
      if(connection != null) {
        connection.close();
      }
      if(statement != null) {
        statement.close();
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }


  public static void main(String[] args) {
    CourseDao dao = new CourseDao();
    List<Course> courses = dao.findAllCourses();
    for(Course c:courses) {
      System.out.println(c);
    }
  }
}
