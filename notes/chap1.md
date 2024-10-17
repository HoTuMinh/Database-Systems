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

![image](./images/1.1.jpg)

### An Example: University database

- **_Defining the database_**: specify the different types of **data elements** to be stored in each record
  - `STUDENT` record includes `Name` (string), `Student_number` (integer), `Class` (1, 2, 3, 4, 5), `Major` (`MATH`, `CS`)
  - `COURSE` record include `Course_name`, `Course_number`, `Credit_hours`, and `Department`
![image](./images/1.2.jpg)

- **_Construct the database_**: store data to represent each student, course, selection, grade repost, and prerequisite as a record in the appropriate file
- **_Manipulating tha database_**: involves querying and updating
  - retrieve the transcript (query)
  - list the names of the students who took the `Database` course (query)
  - change the class of `Smith` to sophomore (update)
  - create a new section for the `Database` course for this semester (update)

> **_IRL_**
> - _the database is a part of the information system within any organization_
> - _the IT department of a company designs and maintains an information system consisting of various computers, storage systems, application softwares, and databases_
> - _Design of a new application for an existing database or design of a brand new database starts off with a phase called **requirements specification and analysis**_
> - _These requirements are documented in detail and transformed into a **conceptual design** (we'll look at the _Entity-Relationship_ model later)_
> - _The design is then translated to a **logical design** that can be expressed in a data model implemented in a commercial DBMS (_Relational Data Model_)_
> - _The final stage is **physical design**, during which further specifications are provided for storing and accessing the database. The database design is implemented, populated with actual data, and continuously maintained to reflect the state of the miniworld_

### Main Characteristics of database systems (vs file processing)

- **file processing**: an older approach of programming with files

| CHARACTERISTICS                                            | FILE PROCESSING                                                                                                                                            | DATABASE                                                                                                                                                                                                                                                                    |
|------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| self-describing nature of a database system                | - data definition is typically part of the application programs themselves <br/> - these programs are constrained to work with only one specific database  | - the **database** also contains definitions of the database structure and constraints (**meta-data**) <br/> - a general-purpose DBMS software package can work well with any number of database applications, as long as the database definition is stored in the database |
| insulation between programs and data, and data abstraction | - any changes to the structure of a file may require changing all programs that access that file                                                           | - we only need to change the description of the file in the catalog (**program-data independence**)                                                                                                                                                                         |
| support of multiple views of the data                      | - consists of direct access to data files                                                                                                                  | - has many users, each of whom may require a different **view** of the database                                                                                                                                                                                             |
| sharing of data and multiuser transaction processing       | - lack of concurrency control <br/> - is intended for personal use (i.e File Manager system on Window)                                                     | - allow multiple users to access the database at the same time <br/> - must include **concurrency control** software to ensure that several users trying to update the same data do so in a controlled manner                                                               |

- **view** of a database: maybe a subset of the database, or **virtual data** that is derived from the database files but not explicitly stored 

- an **operation**: has 2 parts
  1. the **interface (signature)** = operation name + parameters
  2. the **implementation (methods)**: is specified separately and can be changed without affecting the interface
  - user application programs can operate on the data by invoking these operations through their names and arguments, regardless of how the operations are implemented $\rightarrow$ **program-operation independence**
  - in some types of database systems, users can define operations on data
- the characteristic that allows program-data independence and program-operation independence is called **data abstraction**
- a DBMS provides users with a **conceptual representation** of data that does not include how the data is stored or how the operations are implemented
- **data model**: is a type of data abstraction used to provide this conceptual representation (easier for users to understand and use)
- in object-oriented and object-relational databases, the abstraction process includes not only the data structure but also the operations on the data $\rightarrow$ **abstract operation**

- **transaction**: an execution program or process that includes one or more database accesses 
- **online transaction processing (OLTLP)** applications: ex. when several teenagers're booking tickers for a movie
- transaction properties
  1. **isolation**: ensures that each transaction appears to execute in isolation from other transactions 
  2. **atomicity**: ensures that either all the database operations in a transaction are executed or none are 

### Roles around database systems

- **actors**: those who use the database
  - **_Database Administrators (DBA)_**: is responsible for authorizing access to the database, coordinating and monitoring its use, and acquiring software and hardware resources as needed 
  - **_Database Designers_**: are responsible for identifying the data to be stored in the database and for choosing appropriate structures to represent and store this data
  - **_End Users_**: people whose jobs require access to the database for querying, updating, and generating reports; the database primarily exists for their use (you can look up types of end users in the book at page 45) 
  - **_Software Engineers_** = **_System Analysts_** and **_Application Programmers_**
    - **_System Analysts_**: determine the requirements of end users, especially naive and parametric end users, and develop specifications for standard canned transactions that meet these requirements
    - **_Application programmers_**: implement these specifications as programs; then they test, debug, document, and maintain these canned transactions
- **workers**: those who work to maintain the database system but are not interested in the database content
  - **_DBMS system designers and implementers_**: design and implement the DBMS modules and interfaces as a software package (A DBMS is a very complex software system that consists of many components - **modules**)
  - **_Tool developers_**: design and implement **tools** (the software packages that facilitate database modeling and design, database system design, and improved performance, are optional packages that are often purchased separately)
  - **_Operators and maintainance personnel_**: responsible for the actual running and maintenance of the hardware and software environment for the database system

### Advantages of using the database approach 

1. **_controlling redundacy_** (on a scale, not avoid it complety)
    - each logical item (i.e student's name) is stored in only one place $\rightarrow$ **data normalization** $\rightarrow$ **avoid redundancy**
    - placing all the data together to avoid searching for multiple flies to collect a specific data $\rightarrow$ **denormalization** $\rightarrow$ **controlled redundancy**
    - the DBMS should have the capability to control this redundancy

2. **_restricting unauthorized access_**
    - a DBMS should provide a **security and authorization subsystem** (where only some chosen individual can perform certain actions on the database using **privileged software**)

3. **_providing persistent storage for program objects_**
    - an object in the database is **persistent** if it survives the termination of programs execution and can later be directly retrieved by another program
    - traditional database systems often suffered from **impedance mismatch problem**, since the the data structures provided by the DBMS were incompatible with the programming language’s data structures
    - **Object-oriented database systems** typically offer data structure **compatibility(( with
    one or more object-oriented programming languages

4. **_providing storge structures and search techniques for efficient query processing_**
    - as data is typically stored on disk, the DBMS must provide capabilities for efficiently executing queries and updates
    - **indexes**: are auxiliary files used for this purpose (disk search, based on tree | hash data structures)
    - records are copied from disk to main memory for queries $\rightarrow$ the DBMS oftern has **buffering** or **caching** module that maintains parts of the database in main memory buffers
    - the **query processing and optimization** module: responsible for choosing an efficient query execution plan for each query based on the existing storage structures

> **_IRL_**
> _- The choice of which indexes to create and maintain is part of physical database design and tuning, which is one of the responsibilities of the DBA staff_

5. **_providing backup and recovery_**
    - the **backup and recovery subsystem**: is responsible for recovery

6. **_providing multiple user interfaces_**
    - a DBMS should provide a variety of user interfaces for the many types of users with varying levels of technical knowledge 
    - **graphical user interfaces (GUIs)**: forms-style interfaces & menu-driven interfaces 

7. **_representing complex relationships among data_**
    - define new relationships as they arise
    - retrieve and updadte related data easily and efficiently

8. **_enforcing integrity constraints_**
    - most database applications have certain **ingerity contraints** that must hold for the data
    - **referential integrity** constraint (i.e every section record must be related to a course record)
    - **key | uniqueness** constraint: specifies uniqueness on data items values

9. **_Permitting inferencing and actions using rules_**
    - **deductive database systems**: provide capabilities for defining **deduction rules** for inferencing new information from the stored database facts (i.e the database can automatically detect whether a student is on probation and generate that data)
    - **trigger** (with tables): a form of a rule activated by updates to the table, which result in some operations peformed to other tables
    - **stored procedures**: more involved procedures to enforce rules
    - the database systems that have more powerfil functionality are called **active database systems**

10. _(there are more in the book at section 1.6.10 at page 51)_

### A brief history of database applications (_read more at page 52 of the book_)

### When not to Use a DBMS 
- there are a few situations in which a DBMS may involve unnecessary overhead costs that would not be incurred in tradiontional file-processing
- the overhead costs are due to:
  - high initial investment in hardware, software, and training
  - the generality that a DBMS provides for defining and processing data
  - overhead for providing security, concurrency control, recovery, and integrity functions
- therefore, it's better to use regular file in the following cases
  - simple, well-defined database applications that are not expected to change at all
  - stringent, real-time requirements for some application programs that may not be met because of DBMS overhead
  - embedded systems with limited storage capacity, where a general-purpose DBMS would not fit
  - no multiple-user access to data 

### Summarization 

In summary, chapter 1 contains
- the definitions of database and its related components
- an simple example of a database
- the database approach vs. the file processing approach
- types of people who involves with a database
- advantages and disadvantages of using the database approach 

### Review questions 
- define the following terms
  - Data: facts that can be recorded and have meaning 
  - Database: a collection of related data 
  - DBMS: a collection of programs that enables users to create and maintain a database
  - Database system: a system of multiple databases
  - Database catalog: the place to store the database definition (meta-data)
  - Program-data independence: is a characteristic of the database approach - when a file we want to processed changes, we only need to change the description of the file in the catalog, not the programs used to access that file 
  - User view: the view that the user will see and use to interact with the database 
  - DBA: Database Administrator, who is responsible for authorizing access to the database, coordinating and monitoring its use, and acquiring software and hardware resources as needed
  - End user: people whose jobs require access to the database for querying, updating, and generating reports
  - Canned transaction: are standard typeps of queries and updates - that have carefully programmed and tested (for most users - **Naive** or **parametric end users**)
  - Deductive database system: provide capabilities for defining deduction rules for inferencing new information from the stored database
  - Persistent object: objects that survuves the termination of program execution and can later be directly retreived by another C++ program 
  - Meta-data: definitions and descriptions of the data records
  - Transaction-processing application: applications that process transactions for multiple users smoothly  
- What four main types of actions involve databases? Briefly discuss each.
  - defining a database: involves specifying the data types, structures, and constraints of the data to be stored in the database
  - constructing a database: is the process of storing the data on some storage medium that is controlled by the DBMS
  - manipulating a database: includes functions such as querying the database to retrieve specific data, updating the database to reflect changes in the miniworld, and generating reports from the data
  - sharing a database: allows multiple users and programs to access the database simultaneously 
- Discuss the main characteristics of the database approach and how it differs from traditional file systems. (in the section **_Main characteristics of database systems (vs. file processing)_**
- What are the responsibilities of the DBA and the database designers?
  - **DBA** is responsible for authorizing access to the database, coordinating and monitoring its use, and acquiring software and hardware resources as needed. The DBA is accountable for problems such as security breaches and poor system response time.
  - **Database Designers**: are responsible for identifying the data to be stored in the database and for choosing appropriate structures to represent and store this data. It is the responsibility of database designers to communicate with all prospective database users in order to understand their requirements and to create a design that meets these requirements
- What are the different types of database end users? Discuss the main activities of each.
  - **Casual end users**: occasionally acess the database. They use a sophisticated database query language to specify their requests and are typically middle- or high-level managers or
other occasional browsers -  learn only a few facilities that they may use repeatedly
  - **Naive** or **parametric end users**: make up a sizable portion of database end users. Their main job function revolves around constantly querying and updating the database, using standard types of queries and updates (ex. Bank tellers check account balances and post withdrawals and deposits) -  simply have to understand the user interfaces of the standard transactions designed and implemented for their use
  - **Sophisticated end users**: people who thoroughly familiarize themselves with the facilities of the DBMS in order to implement their own applications to meet their complex requirements (ex. engineers, BA,...) - try to learn most of the DBMS facilities in order to
achieve their complex requirements
  - **Standalone users**: maintain personal databases by using ready-made program packages that provide easy-to-use menu-based or graphics-based interfaces (ex. user of a tax package that stores a variety of personal financial data for tax purposes) - typically become very proficient in using a specific software package
- Discuss the capabilities that should be provided by a DBMS
  - controlling redundancy
  - restricting unauthorized access
  - providing persistent storage for program objects
  - providig storage structures and search techniques for efficient query processing
  - providing backup and recovery
  - providing multiple user interfaces
  - representing complex relationships among data
  - enforcing integrity constraints
  - permitting inferencing and actions using rules
- Discuss the differences between database systems and information retrieval systems

| CATEGORY                               | DATABASES                                                                                                            | INFORMATION RETREIVAL (an area realted to database technology)                                                                             |
|----------------------------------------|----------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| the field in which they are often used | - manufacturing - retail  - banking - insurance - finance - health care                                              | - books - manuscripts - various forms of library-based articles                                                                            |
| the main task                          | - processing structured and formatted data that arises in routine applications in government, business, and industry | - IR is concerned with searching for material based on key-words - problems dealing with document processing  - free form text processing  |

### Exercises 
- Identify some informal queries and update operations that you would expect to apply to the database shown in Figure 1.2.
  - retrieve the transcript of all courses and grades of 'Smith'
  - list the prerequisite of the 'Database' course
- What is the difference between controlled and uncontrolled redundancy? Illustrate with examples.
  - in the database approach, there is a controlled amount of redundancy (in defining and storing data in wasted storage), which means that too much redundancy is not good and too little redundancy is not good either
  - example of good redundancy: we may store `Student_name` and `Course_number` redundantly in a `GRADE_REPORT` , because whenever we retrieve a `GRADE_REPORT` record, we want to retrieve the student name and course number along with the grade, student number, and section identifier. By placing all the data together, we don't have to seach multiple files to colect this data, which improves the queries
  - example of bad redundancy: every user group maintains their own file - the accounting office keeps data on registration and related billing information, while the registration office keeps track of student courses and grades (file processing approach). This leads to _duplication of effort_ (modifying data multiple times), _storage space is wasted_ when the dame data is stored repeatedly, and the data may become _inconsistent_
- Specify all the relationships among the records of the database shown in Figure 1.2.

| The record _ | in table _ is related to | _ records | in           |
|--------------|--------------------------|-----------|--------------|
| Smith        | STUDENT                  | 2         | GRADE REPORT |
| Brown        | STUDENT                  | 4         | GRADE REPORT |
| 17           | GRADE_REPORT             | 2         | SECTION      |
| 8            | GRADE_REPORT             | 4         | SECTION      |
| CS3380       | PREREQUISITE             | 2         | COURSE       |
| CS3320       | PREREQUISITE             | 2         | COURSE       |
| 85           | SECTION                  | 1         | COURSE       |
| 92           | SECTION                  | 1         | COURSE       |

- Give some additional views that may be needed by other user groups for the database shown in Figure 1.2.
  - students use the database to search for their course and grades information
  - teachers use the database to search for their students' and classes' information
- Cite some examples of integrity constraints that you think can apply to the database shown in Figure 1.2.

| TYPE                  | CONSTRAINT                                                                                         |
|-----------------------|----------------------------------------------------------------------------------------------------|
| the simplest type     | the value of Name must be a string of no more than 30 alphabetic characters                        |
| the simplest type     | the value of Grade must be an uppercase character, and can only take on value {A, B, C, D, F or I} |
| referential integrity | every section record must be related to a course record                                            |
| referential integrity | every GRADE_REPORT record must be related to a STUDENT record                                      |
| uniqueness constraint | every course record must have a unique value for course number                                     |
| uniqueness constraint | every student must have a unique value for Student_number                                          |

- Give examples of systems in which it may make sense to use traditional file processing instead of a database approach.
  - when the overhead cost is too high
  - when there are real-time requirements for some application programs that may not bt met because of DBMS overhead
  - when there is no multiple-user access to data
- Consider Figure 1.2:
  1. If the name of the ‘CS’ (Computer Science) Department changes to ‘CSSE’ (Computer Science and Software Engineering) Department and the corresponding prefix for the course number also changes, identify the columns in the database that would need to be updated
    - column `Course_number` of the `COURSE`, `PREREQUISITE` and `SECTION` table, and column `Prerequisite_number` of `PREREQUISITE` table
  3. Can you restructure the columns in the COURSE, SECTION, and PREREQUISITE tables so that only one column will need to be updated?
    - we can change from using `Course_numer` to `Course_name`, which would not change when the `Department`'s name change

### Linkies 

- I read mostly from the book
- I use [this](https://www.tablesgenerator.com/markdown_tables#google_vignette) to generate md tables
- [reference1](https://www.dremio.com/wiki/file-processing-system/#:~:text=File%20Processing%20Systems%20offer%20direct,and%20file%2Dlevel%20data%20manipulation.) on file processing systems
- [reference2](https://www.geeksforgeeks.org/file-processing-system-fps/) on file processing systems

### Questions

- [ ] does an _object_ in line 108 refers to a field in a table in a database?
- [ ] what is _program objects_? (pg 48 of the book)
- [ ] what does _semantic of the data_ means?
- [ ] explore the career path of database systems? What skills are required? Is it a hot career path in Viet Nam?
- [ ] Specify all the relationships among the records of the database shown in Figure 1.2.
