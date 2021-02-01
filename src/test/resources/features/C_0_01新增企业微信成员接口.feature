Feature: 企业微信_新增人员接口

  Scenario: wx_新增人员接口
    Given API "/cgi-bin/user/create?access_token=${getToken}"
    And Body
    """
     {
      "userid": "TESTER",
      "name": "${wxName}",
      "alias": "Random(Char[4])",
      "mobile": "${mobile}",
       "department": [2],
      }
    """
    When POST
    Then STATUS "200"
#    jsonpath使用
    Then JSONPATH_GET_MONGO
      | mobile|${mobile} |
#    jsonpath断言使用
    Then JSONPATH_ASSERT_EQUALS
      | errcode  | 0      |
