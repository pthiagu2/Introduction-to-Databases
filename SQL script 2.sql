/*Find the names of the patients and their respective department who have age above 30*/

Use pthiagu2_Hospital;

select A.First_Name,A.Last_Name,A.Patient_Age,B.Department_Name from pthiagu2_Hospital.Patient A join pthiagu2_Hospital.Department B on A.Patient_ID = B.Department_ID where Patient_Age > '30' group by Patient_Age;

/*Find the number of the patients who have been in the hospital for more than 10 months*/

select count(*) as NoofPatients,Room_Type from pthiagu2_Hospital.Room where Duration = 'Long' group by Room_Type;

/*Find the average , maximum and minimum age of employees under employee type Medical */

select avg(Age),max(Age),min(Age) from pthiagu2_Hospital.Human_Resource where Employee_Type = 'Medical';

/*Find the names and employee type of employees who are male*/
select Resource_FirstName,Resource_LastName,Employee_Type from pthiagu2_Hospital.Human_Resource where Employee_Type = 'Medical' and Age in (select Patient_Age from pthiagu2_Hospital.Patient where Gender = 'Male');

/*Find the names of the patients who are same age as working staffs */
select * from (select A.First_Name,A.Last_Name,A.Patient_Age,B.Department_Name from pthiagu2_Hospital.Patient A join pthiagu2_Hospital.Department B on A.Patient_ID = B.Department_ID where Patient_Age > '30' group by Patient_Age)
as X join (select Age,Resource_FirstName,Resource_LastName from pthiagu2_Hospital.Human_Resource where Age > '30' group by Age) as Y on X.Patient_Age = Y.Age group by Age;

/*Find the staff associated with Patient Andrew and find thier associated Specialization and Employee type */
select Resource_FirstName,Resource_LastName,Specialization,Employee_Type from (select A.First_Name,A.Last_Name,A.Patient_Age,B.Department_Name from pthiagu2_Hospital.Patient A join pthiagu2_Hospital.Department B on A.Patient_ID = B.Department_ID where First_Name = 'Andrew' and Patient_Age > 30 group by Patient_Age)
as X join (select Resource_FirstName,Resource_LastName,Specialization,Employee_Type,Age from pthiagu2_Hospital.Human_Resource) as Y on X.Patient_Age = Y.Age group by Patient_Age;


