Feature: mock数据测试

  Scenario: mock数据测试
    Given INIT_MOCK
    Given API "/hr/test"
    And HeadersX
      | Authorization | ${Authorization} |
    When PUT_MOCK
    Then STATUS "200"
    Then JSONPATH_ASSERT_EQUALS
      | code   | 0 |
      | data[0].children.findAll{ children -> children.year == "2020"}.yearId[0] | YEAR1347422249510113280 |