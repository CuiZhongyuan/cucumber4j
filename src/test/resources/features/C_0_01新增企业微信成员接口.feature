@test
Feature: 企业微信_新增人员接口

  Scenario: wx_新增人员接口
    Given API "/cgi-bin/user/create?access_token=${getToken}"
    And Body
    """
     {
      "userid": "${userid}",
      "name": "${name}",
      "position": "测试工程师",
      "alias": "${alias}",
      "mobile": "${mobile}",
      "email":"${email}",
       "department": [3],
      }
    """
    When POST
    Then STATUS "200"
#    jsonpath断言使用
    Then JSONPATH_ASSERT_EQUALS
      | errcode  | 0      |
