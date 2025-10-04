# 🎓 Student Management System

A modern web application for efficiently managing student records, courses, exams, results, and administrative tasks in educational institutions.

---

## 🚀 Overview & Highlights

The **Student Management System** provides:

- **Student & Admin Dashboards:** Intuitive interfaces for both students and administrators.
- **Comprehensive Management:** Add, view, update, and delete student records; manage courses, exams, results, and profiles.
- **Communication Tools:** Built-in mailbox and calendar for scheduling and messaging.
- **Data Visualization:** Dashboard with charts and statistics.
- **File Uploads:** Easily manage student images and documents.

---

## ✨ Features

- 👨‍🎓 Student Management: Add, view, update, and delete student records
- 📚 Course Management: Admin can manage courses and view course details
- 📝 Exam Scheduling: Schedule exams and manage exam details
- 🏆 Result Management: Enter and view student results
- 🧑‍💼 Profile Views: Student and teacher profile management
- 📬 Mailbox: Internal messaging system for admin users
- 📅 Calendar: Integrated calendar for scheduling and events
- 📊 Dashboard: Admin dashboard with charts and statistics
- 📁 File Uploads: Upload student images and documents

---

## 🗂️ Project Structure

```
├── index.html / index.jsp         # Landing & login pages
├── profile_view.jsp
├── result_login.jsp
├── student_cam.jsp
├── student_result.jsp
├── student_save.jsp
├── student_view.jsp
├── admin/
│   ├── add-listing.jsp
│   ├── basic-calendar.jsp
│   ├── bookmark.jsp
│   ├── courses.jsp
│   ├── exam.jsp
│   ├── index.jsp
│   ├── list-view-calendar.jsp
│   ├── lower-container.jsp
│   ├── mailbox-compose.html
│   ├── mailbox-read.jsp
│   ├── mailbox.jsp
│   ├── review.jsp
│   ├── student_fees.jsp
│   ├── student_result.jsp
│   ├── student_save.jsp
│   ├── students_view.jsp
│   └── ...more
├── assets/                       # CSS, JS, images, fonts
├── uploads/                      # Student files
├── common/                       # Database connection
├── css/
├── fonts/
├── image/
├── images/
├── js/
├── lib/
├── scss/
```

---

## ⚙️ Setup & Usage

1. **Requirements:** Apache Tomcat, Java, and a compatible database (e.g., Oracle)
2. **Database:** Configure your connection in `common/db_connect.jsp`
3. **Deployment:** Place the project folder in the Tomcat `webapps` directory
4. **Access:**  
   - Students: Login via `index.jsp`  
   - Admin: Login via `admin/index.jsp`
5. **Customization:** Update styles in `assets/css/`, `scss/`, and `bootstrap/`

---

## 📄 Key Files

- `index.html` — Landing page
- `index.jsp` — Login
- `student_view.jsp` — Student dashboard
- `admin/index.jsp` — Admin dashboard
- `admin/students_view.jsp` — Student management
- `admin/courses.jsp` — Course management
- `admin/exam.jsp` — Exam scheduling
- `admin/student_result.jsp` — Result management
- `admin/mailbox.jsp` — Messaging
- `admin/basic-calendar.jsp` — Calendar
- `admin/list-view-calendar.jsp` — Calendar list view
- `admin/user-profile.jsp` — User profile
- `admin/teacher-profile.jsp` — Teacher profile

---

## 📦 License

This project is for educational purposes.

---

## 🙏 Credits

Template and UI assets from [Templates Hub](https://www.templateshub.net).
