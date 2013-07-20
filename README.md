online_department_portal
========================
The proposed system is to make an online web portal for Computer Science Department, so that everyone can get information about department, students can easily communicate with teachers from anywhere. Teachers can easily communicate with the students, and can keep records of every student easily and efficiently. The proposed system could be accessed from any corner of the world on net.

• Faculties: This module gives profile information of various faculties associated to the department.
> It gives profile information of all the faculties.
> Anyone can contact to these faculties and post queries to them.
>They can upload E-books and other reading materials.
>They can post notices to the students and also view the notices from the administrator.
•	Students: This is a separate webpage for students. 
>They can view, edit, and update their profile from anywhere.
>Student can download documents as well.
>They can view faculty profile and even post queries to the faculties.
>The can also generate their Resume
>They can view notices by the Admin.
>They can view notices by the Faculties.
•	Administrator: The administrator has the central control over the whole portal.
>He can access the students and faculties  information directly.
>He will create the student and faculty profiles which they can later on edit.
>He can respond to the queries of the faculties.
>He can post notices which will be accessible to the both the faculties and the students.
>He will handle the number of students and incase any student or faculty leaves he will edit the record accordingly.

Description:
Admin Module:
1.	Add Students and Faculty Details :
Create a form for administrator to add new student/Faculty. And insert new entry on LoginMaster table. This form has 1drop down list for selection of student or faculty.
2.	Delete/Edit the details
Create a form where all students/faculty are display on the combo and the admin can select any student and can delete any of the student/faculty from the LoginMaster table.
3.	Upload Notice
Create a page with 1 text field for title of the notice and text area for the content of the notice. The page should also contain a combo to choose for whom the notice is for.
4.	Delete/Edit the details
Create a form where all notice title are display on the combo and the admin can select any notice and can delete/edit any of the notice.
Student Module:
1.	Create An profile(Registration):
Create a form where the user can create an enter the details of academics and extra curricular activites the profile is is in editable mode. .
2.	Resume Builder
Create a page which will generate a resume based on the data entered by the student in the profile.
3.	Notice board:
Create a page which will have a combo box from which the student can choose which notice he wishes to see either by the admin or by the faculty.  
4.	Faculty page:
Create a page which will contain the list of the faculties sorted alphabetically and each entry serves as a link to the faculty profile.
5.	Ebooks page
In this form user can download the ebooks uploaded by the faculties the are also sorted by their name.
6.	Scrap Space:
Each student should have his own scrap space where the response to their queries is posted.
Faculty Module:
1.	Create An profile(Registration):
Create a form where the faculty can create an enter the details of academics and extra curricular activites the profile is is in editable mode. .
2.	Notice :
Create a page with 1 text field for title of the notice and text area for the content of the notice. The page should also contain a combo to choose for whom the notice is for.
3.	Students page:
Create a page which will contain a combo box from which the faculties can choose to view the profile of the students of the respective batch.
4.	Upload ebooks page
In this form user can upload the ebooks for the students it will have a combo to decide for whom the ebook is to be uploaded.
5.	Scrap Space:
Each faculty should have their own scrap space where the queries is posted.
7.	Notice board:
The faculty should be able to view the notices uploaded on the common notice board.
8.	Delete/Edit the details
Create a form where all notice title are display on the combo and the admin can select any notice and can delete/edit any of the notice.

Tools & Technology
Technology : 
Server Side : Java(JDK6.0), Servlet2.4, JSP2.0, EL, JSTL
Client Side : HTML, JavaScript, CSS
Database : MySQL 5.0
Framework : Jakarta Struts Framework.
IDE : NetBeans6.5, Dreamweaver8, MySQL GUI Tool5.0
