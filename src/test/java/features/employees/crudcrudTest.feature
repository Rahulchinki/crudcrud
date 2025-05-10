Feature: Test CRUD and Negative operations on API
    # This test will create employee, verify its created(GET operation) followed by updating Data (PUT) and Deletion
    # In Addition there will be Negative tests will be tested out along
  Background:
    * def baseUrl = baseUrl
    * def resource = resources.employee
    * def schema = read('employee-schema.json')
    * def testData = read('employee-test-data.json')
    * def updateTestData = read('update-employee-test-data.json')
    * def employeeInvalidData = read('employee-invalid-test-data.json')
    * def employeeMissingData = read('employee-missing-test-data.json')
    * url baseUrl + '/' + resource
    * def employeeID = null

  Scenario:  Validate CRUD operations and also Test Negative scenarios

    # Create Employee Details
    Given request testData
    When method POST
    Then status 201
    * match response == schema
    * def empId = response._id

    # Create Employee details with missign Data
    Given request employeeInvalidData
    When method POST
    Then status 400

  # Create Employee details with invalid Data
    Given request employeeMissingData
    When method POST
    Then status 400

# Get Created Employee Details
    Given path  '/'+empId
    When method GET
    Then status 200
    And match response._id == empId

#Negative test : Get Employee with invalid ID
    Given path  '/'+'ududud1222'
    When method GET
    Then status 404

 # Test : Update Employee
    Given path '/'+empId
    And request updateTestData
    And method PUT
    Then status  200

#Delete the Created Employee Details
    Given path  '/'+empId
    When method DELETE
    Then status 200

  #Deleting the Created Employee Details to verify error
    Given path  '/'+empId
    When method DELETE
    Then status 404
