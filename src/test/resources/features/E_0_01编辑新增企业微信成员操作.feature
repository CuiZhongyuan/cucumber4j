#@test
Feature: D_0_01编辑新增企业微信成员操作

  Scenario: 编辑新增企业微信成员操作
    Given API "/cgi-bin/user/update?access_token=${getToken}"
    And Body
    """
          {
          "userid": "testRandom(Char[4])",
          "name": "${editUserid}",
          "department": [1],
          "order": [10],
          "position": "测试工程师",
          "mobile": "13800000001",
          "gender": "1",
          "email": "zhangsan@gdev.com"
      }
    """
    When POST
    Then STATUS "200"
    Then JSONPATH_ASSERT_EQUALS
      | errcode  | 0      |
      | errmsg   |updated |