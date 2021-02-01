Feature: ["更新成员接口"]

  Scenario: 更新人员接口_正向测试
    Given API "/cgi-bin/user/update?access_token=${getToken}"
    And Body
    """
          {
          "userid": "CuiZhongYuan",
          "name": "修改李四",
          "department": [1],
          "order": [10],
          "position": "后台工程师",
          "mobile": "13800000000",
          "gender": "1",
          "email": "zhangsan@gzdev.com"
      }
    """
    When POST
    Then STATUS "200"
    Then JSONPATH_ASSERT_EQUALS
      | errcode  | 0      |
      | errmsg   |updated |