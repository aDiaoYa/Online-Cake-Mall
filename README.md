

# Online-Cake-Mall

A lightweight, Java-based e-commerce web application designed for an online cake shop. Built with a classic Java EE stack, it provides a complete shopping experience for customers and a management dashboard for administrators.

## ✨ Features
- **Product Management**: Browse cakes by category, search, and view detailed product information. Includes recommendation banners for hot and new arrivals.
- **Shopping & Orders**: Add items to cart, place orders, and track order history with status tracking (unpaid, paid, shipped, completed).
- **User System**: Registration, login, logout, and profile management.
- **Admin Dashboard**: Securely protected admin panel (`/admin/*`) for managing users and overseeing store operations.
- **Utility**: Built-in pagination, UTF-8 encoding filter, and application-level data caching (e.g., loading categories on startup).

## 🛠 Tech Stack
- **Language**: Java 8
- **Build Tool**: Maven
- **Web Framework**: Java Servlet 4.0, JSP, JSTL
- **ORM**: MyBatis 3.5.5
- **Database**: MySQL 5.1+
- **Server**: Apache Tomcat (via Maven Plugin)
- **Logging**: Logback + SLF4J
- **JSON**: Jackson Databind

## 📦 Installation & Setup

### Prerequisites
- JDK 1.8 or higher
- Maven 3.x
- MySQL 5.7 or 8.0
- IDE (IntelliJ IDEA recommended)

### Steps
1. **Clone the repository**
   ```bash
   git clone https://github.com/aDiaoYa/Online-Cake-Mall.git
   cd Online-Cake-Mall
   ```

2. **Database Configuration**
   - Create a MySQL database named `myshop`.
   - Ensure tables for `user`, `goods`, `orders`, `orderitem`, `type`, and `recommend` exist in the database.
   - Configure your database connection (typically in `src/main/resources/jdbc.properties` or `mybatis-config.xml`):
     ```properties
     driver=com.mysql.cj.jdbc.Driver
     url=jdbc:mysql://localhost:3306/myshop?useSSL=false&serverTimezone=UTC
     username=root
     password=your_password
     ```

3. **Build the Project**
   ```bash
   mvn clean package
   ```

## 🚀 Usage & Running

This project is configured as a Maven `war` package and includes the `tomcat7-maven-plugin` for quick local deployment.

### Start the Server
Run the following command in the project root directory:
```bash
mvn tomcat7:run
```
The application will typically start at `http://localhost:8080/MyShop`.

### Admin Access
- Navigate to `http://localhost:8080/MyShop/admin/` to access the backend.
- The `AdminFilter` (`/admin/*`) restricts access to users with `isadmin=true`. Ensure an admin account exists in the database or update the `isadmin` flag for an existing user to `1`.

## 📁 Project Structure
```
src/main/java/com/aDiao/
├── entity/      # POJOs: Goods, Orders, User, Type, Page, Recommend, Orderitem
├── filter/      # CodeFilter (UTF-8 encoding), AdminFilter (Admin auth)
├── listener/    # ApplicationListenner (Loads categories on context init)
├── mapper/      # MyBatis DAO interfaces with annotations
├── service/     # Business logic layer
└── servlet/     # HTTP request handlers
```

## 📝 Notes
- The project is configured for JDK 1.8. Ensure your IDE and Maven compiler settings match.
- Frontend resources and JSP pages are located in `src/main/webapp/`.
- For production deployment, build the `war` file using `mvn package` and deploy it to a standalone Tomcat instance or containerized environment.
