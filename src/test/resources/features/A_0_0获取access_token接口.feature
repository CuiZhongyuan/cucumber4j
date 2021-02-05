@test
Feature: ["获取access_token"]

  Scenario: 获取access_token
    Given API "/cgi-bin/gettoken"
    And Param
    """
    corpid : ww27d6f876d80ceec6
    corpsecret: yiXycY2QFDwD9HysYNk6hF7NFnt1CxBybuei1YKVaVw
    """
    When GET
    Then STATUS "200"
    Then JSONPATH_GET_MONGO
    |access_token|getToken|
    Then JSONPATH_ASSERT_EQUALS
      | errmsg   | ok |
