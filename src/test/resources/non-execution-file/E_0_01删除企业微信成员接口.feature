Feature: ["删除成员接口"]

  Scenario Outline: 删除人员接口_正向测试
    Given API "/cgi-bin/user/delete"
    And Param
    """
          access_token: ${getToken}
          userid: TESTER
    """
    When GET
    Then STATUS "200"
    Then JSONPATH_ASSERT "<jsonPath>" equals "<value>"
    Examples:
      | jsonPath | value  |
      | errcode  | 0      |