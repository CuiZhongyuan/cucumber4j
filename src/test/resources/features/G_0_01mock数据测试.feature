
Feature: G_0_01mock数据测试

  Scenario: mock数据测试
    Given API "/hr/test"
    And HeadersX
      | Authorization | ${Authorization} |
    When GET_MOCK
    Then STATUS "200"
    Then JSONPATH_ASSERT_EQUALS
      | code   | 0 |
      | data[0].children.findAll{ children -> children.year == "2020"}.yearId[0] | YEAR1347422249510113280 |