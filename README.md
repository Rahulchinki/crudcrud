**API CRUD OPERATIONS******



**Introduction****


This repository showcases how to implement and automate CRUD operations using

**Features **
  BDD Syntax: Utilize Gherkin-style syntax for clear and understandable test cases.

  CRUD Operations: Demonstrates Create, Read, Update, and Delete operations on RESTful APIs.

  Data-Driven Testing: Easily test multiple scenarios with different data sets.

  Assertions: Built-in support for JSON and XML assertions.

  Reporting: Generates detailed HTML reports post test execution. genearted in target/karate-reports/karate-summary.html

  Can be integrated to CID pipe line using mvn clean test in build steps


**  How to run ?**

After cloning the project and building and installing all depdencies in POM  run below command or add it to run configuration

clean compile test -Dcrud.url=https://crudcrud.com/api/<ID>
IMP: the ID part has to be provided in the run command .


**Folder Structure
**

package src/test/java/features/employees contains 
  - BDD feature file having all the scenarios for crud operation along with negative scenarios
  - it also has json files providing data for valid and invalid scenarios
  - json schema to compare teh created resource

  in addition there is 
  karate.config file 
  Testrunner file
  Reports are generated at target/karate-reports/karate-summary.html



