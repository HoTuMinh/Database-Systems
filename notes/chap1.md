# CHAPTER 1: DATABASES AND DATABASE USERS 

- everyday we interact with databases (i.e making a transaction, purchase something online,...) $\rightarrow$ **traditional database applications** (most of the information stored and accessed is either textual or numeric)
- nowadays we have **multimedia databases** (can store images, audio clips, video streams digitally)
- **Geographic information systems (GIS)** (maps, weather, satelite images,...)
- **Data Warehouse** and **online analytical processing (OLAP)** systems are used to extract and analyze information from large databases
- **Real-time** and **active database technology** is used to control industrial manufacaturing processes 

### Definitions

| TERMS                             | DEFINITIONS                                                                                                  |
|-----------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| database                          | collection of related data
| data                              | facts that can be recorded and have meaning                                                                                  |
| database management system (DBMS) | collection of programs that enables users to create and maintain a database  (defining, constructing, manipulating, sharing) |
| defining a database               | specifying the data types, structure, constraints of the data                                                                |
| meta-data                         | database definition, stored by the DBMS in the form of a database catalog                                                    |
| constructing a database           | the process of storing the data on some storage that is controlled by the DBMS                                               |
| manipulating the database         | functions to retrieve data, update the database, generate reports from the data                                              |
| sharing a database                | allows multiple users and programs to access the database simultaneously                                                     |
| query                             | causes some data to be retrieved                                                                                             |
| transaction                       | cause some data to be read                                                                                                   |
| protection                        | includes system protection (against crashes) & security protection (against malicious access)                                |
| maintain a database               | allow the system to evolve as requirements change overtime                                                                   |

- a database has the following implicit properties
  - it represents some aspect of the real world (called **miniworld** or **universe of discourse (UoD)**)
  - it's a logical coherent collection of data
  - it's designed, built, and populated with data for a specific purpose
- an **application programs** accesses the database by sending requests or queries for data to the DBMS

![image](https://github.com/user-attachments/assets/16b31565-d3a8-4685-8703-8ed125c6ab55)

### An Example: University database

- **_Defining the database_**: specify the different types of **data elements** to be stored in each record
  - `STUDENT` record includes `Name` (string), `Student_number` (integer), `Class` (1, 2, 3, 4, 5), `Major` (`MATH`, `CS`)
  - `COURSE` record include `Course_name`, `Course_number`, `Credit_hours`, and `Department`
![image](https://github.com/user-attachments/assets/647b388f-9c09-47b6-9b8f-73fffebe9316)

- **_Construct the database_**: store data to represent each student, course, selection, grade repost, and prerequisite as a record in the appropriate file
- **_Manipulating tha database_**: involves querying and updating
  - retrieve the transcript (query)
  - list the names of the students who took the `Database` course (query)
  - change the class of `Smith` to sophomore (update)
  - create a new section for the `Database` course for this semester (update)

> **_IRL_**
- the database is a part of the information system within any organization
- the IT department of a company designs and maintains an information system consisting of various computers, storage systems, application softwares, and databases
- Design of a new application for an existing database or design of a brand new database starts off with a phase called **requirements specification and analysis**
- These requirements are documented in detail and transformed into a **conceptual design** (we'll look at the _Entity-Relationship_ model later)
- The design is then translated to a **logical design** that can be expressed in a data model implemented in a commercial DBMS (_Relational Data Model_)
- The final stage is **physical design**, during which further specifications are provided for storing and accessing the database. The database design is implemented, populated with actual data, and continuously maintained to reflect the state of the miniworld


### Main Characteristics of database systems 

### Roles around database systems

### Capabilities provided by database systems 

### Typical applications 

### Summarization 
