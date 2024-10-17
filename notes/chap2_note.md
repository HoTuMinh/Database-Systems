# CHAPTER 2. DATABASE SYSTEM CONCEPTS AND ARCHITECTURE 

### Introduction 

- the architecture of DBMS pakages has evolved from a tightly integrated system, to packages that are modular in design, with a client/server system architecture

### Data Models, Schemas, and Instances

- **data abstraction**: the suppression of details of data organization and storage, and highlighting of the essential features for an improved understanding of data
- **data model**: a collection of concepts that is used to describe the structure of a database (provides the means to achieve **data abstraction**)
  - _structure of a database_: data types, relationships, and constraints apply to the data
  - most data models also include a set of **basic operations** for specifying retrievals and updates on the database (insert, delete, modify,...)
  - **dynamic aspect** of a database application, for the database designer to specify valid user-defined operations 
- categories of data models - for each type of user, ranging from parametric users (most users) to computer specialists (who build the database)
  - **high-level** or **conceptual data models** provide concepts that are close to the way many users perceive data $\rightarrow$ **Entit-Relationship model**
    - **entity**: a real-world object or concepts (ex. an employee)
    - **attribute**: a property of interest that further describe an entity
    - **relationship**: an association among the entities
    - **object data model**: an example of a new family implementation data models that are closer to conceptual data models
- **low-level** or **physical data models** describe the detail of how data is stored on the computer storage media, typically magnetic disks
  - **access path**: a structure that makes the search for particular database recordss efficient
  - **index**: an example of an access path that allows direct access to data using an index term or keyword
- **representational data models** provide concepts that can be understood by end users but are not too far from the way data is organized in computer storage
- ****

### Three-Schema Architecture and Data Independence

### Database Languages and Interfaces

### The Database System Environment

### Centralized and Client/Server Architectures for DBMSs

### Classification of Database Management Systems

### Summary 

### Review questions

### Exercies

### Questions
- [ ] what is **_object data model_**? (pg 31 of the book) 

### Linkie 
