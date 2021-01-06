Feature: ["新增成员接口"]

  Scenario Outline: 新增人员接口_正向测试
    Given API "/cgi-bin/user/create?access_token=${getToken}"
    And Body
    """
     {
      "userid": "TESTER",
      "name": "czy",
      "alias": "czy",
      "mobile": "15238305317",
       "department": [2],
      }
    """
    When POST
    Then STATUS "200"
    Then JSONPATH_ASSERT "<jsonPath>" equals "<value>"
    Examples:
      | jsonPath | value  |
      | errcode  | 0      |
