
User Manual for Webpage Dashboard IMST INCHOR

## Table of Contents
1. Introduction
2. System Requirements
3. Installation
4. User Interface Overview
5. Features and Functionalities
    - Dashboard Overview
    - Student Management
    - Recent News
    - Result Management
    - Attendance Tracking
    - Fee Details
    - Vacancy Announcements
    - Academic Tutorials
    - Privacy Policy
6. Admin Functions
    - Logout
    - Admin Settings
7. Troubleshooting
8. Contact Information

---

## 1. Introduction

Welcome to the Webpage Dashboard User Manual. This document provides comprehensive instructions on how to use and manage your webpage dashboard efficiently. Our dashboard is built using Java with Spring Boot for the backend, Hibernate ORM for database management, and Thymeleaf for template rendering. The frontend is designed using HTML, CSS, and Bootstrap to ensure a responsive and user-friendly interface.

## 2. System Requirements

To use the dashboard, ensure that your system meets the following requirements:
- **Java Development Kit (JDK)**: Version 11 or higher
- **Apache Maven**: Version 3.6.3 or higher
- **MySQL Database**: Version 8.0 or higher
- **Lombok**: For reducing boilerplate code
- **MySQL Driver**: For connecting to the MySQL database
- **Spring Boot DevTools**: For enhanced development experience
- **Spring Data JPA**: For data persistence
- **Spring Web**: For building web applications
- **Thymeleaf**: For server-side rendering of HTML
- **Web Browser**: Latest version of Chrome, Firefox, or Safari

## 3. Installation

### 3.1 Cloning the Repository
1. Open your terminal or command prompt.
2. Navigate to the directory where you want to clone the project.
3. Run the following command:
    ```bash
    git clone https://github.com/siddhantbhattarai/Team-2-Project.git
    ```

3.1 spring.application.name=ISMT

#_________Database Configuration________________
spring.datasource.url =jdbc:mysql://localhost:3306/ismtcollegeSSD?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=


#______________JPA Hibernate configuration________________
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
    ```


## 4. User Interface Overview

The dashboard consists of several sections accessible through a navigation bar. Each section provides specific functionalities for managing students, news, results, attendance, fees, vacancies, tutorials, and more.

### 4.1 Navigation Bar
- **Dashboard**: Overview of key metrics and summaries.
- **Add Student**: Add new student details.
- **View Students**: Manage and view student information.
- **Recent News**: View and add recent news.
- **Result**: Manage student results.
- **Attendance**: Track student attendance.
- **Fee Details**: Manage and view fee information.
- **Vacancy**: Announce and manage vacancies.
- **Academic Tutorials**: Access and manage academic resources.
- **Privacy Policy**: View privacy policy details.
- **Logout**: Sign out of the dashboard.
- **Admin**: Access admin settings.

### 4.2 Dashboard
The main dashboard provides an overview of key metrics and summaries. It includes widgets for:
- Total Students
- Active Sessions
- Recent News
- Student Results
- Attendance Records

## 5. Features and Functionalities

### 5.1 Dashboard Overview
- **Metrics and Summaries**: Provides a quick view of the system's status.
- **Recent Activities**: Displays the latest actions performed by users.

### 5.2 Student Management
- **Add Student**: Input details to add a new student to the system.
- **View Students**: List and manage all student records.

### 5.3 Recent News
- **View News**: Display recent news and updates.
- **Add News**: Input details to post new news items.

### 5.4 Result Management
- **View Results**: List all student results.
- **Add Result**: Input details to add new results.

### 5.5 Attendance Tracking
- **View Attendance**: Track and manage student attendance records.
- **Add Attendance**: Input details to mark attendance.

### 5.6 Fee Details
- **View Fees**: List all fee details.
- **Add Fee**: Input details to add new fee records.

### 5.7 Vacancy Announcements
- **View Vacancies**: Display current vacancies.
- **Add Vacancy**: Input details to announce new vacancies.

### 5.8 Academic Tutorials
- **View Tutorials**: Access and manage academic resources and tutorials.

### 5.9 Privacy Policy
- **View Policy**: Access the privacy policy document.

## 6. Admin Functions

### 6.1 Logout
- **Logout**: Safely sign out of the dashboard.

### 6.2 Admin Settings
- **Admin**: Access admin-specific settings and configurations.

## 7. Troubleshooting

### 7.1 Common Issues
- **Database Connection Error**: Ensure that the database credentials in the `application.properties` file are correct and that the database server is running.
- **Application Not Starting**: Check for errors in the terminal and ensure all dependencies are installed correctly.
- **Lombok Not Working**: Ensure Lombok is properly configured in your IDE. For IntelliJ IDEA, install the Lombok plugin and enable annotation processing.

### 7.2 Getting Help
- **Documentation**: Refer to the official documentation of Spring Boot, Hibernate, Thymeleaf, and Lombok.
- **Community Support**: Reach out to community forums and GitHub discussions for assistance.

## 8. Contact Information

For further assistance, please contact:
- **Support Team**: support@yourcompany.com
- **Phone**: +123-456-7890

---

This manual provides the necessary information to get started with your webpage dashboard. For detailed instructions on each functionality, refer to the respective sections.