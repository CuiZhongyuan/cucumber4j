@test
Feature: F_0_01删除企业微信成员操作

  Scenario: 删除新增企业微信成员操作
    Given API "/cgi-bin/user/delete?access_token=${getToken}"
    And Param
    """
    userid: userid_testGgKD
    """
    When GET
    Then STATUS "200"
    Then JSONPATH_ASSERT_EQUALS
      | errcode  | 0      |
