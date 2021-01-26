Feature: 初始化数据

#  A3B0F1DDA7614156A306BB950E9F9D73
  Scenario:  初始化变量数据
    Given INI_VAR_DATA
    """
    testNum: Random(Long[4])
    testNum: Random(Char[4])
    """
#    And INIT_MYSQL_DATA
#    """
#    dbName : questionbank
#    tables :
#    - name : BdProject
#      withData : Y
#      filter : ORDER BY projectCreateddate Desc LIMIT 0,100
#    - name : BdSyncevent
#      withData : Y
#    - name : QbQuestionfeedback
#      withData : n
#    - name : QbAnswersheetdetail1
#      withData : n
#    - name : QbUps88
#      withData : n
#    - name : QbPaper
#      withData : n
#    - name : QbExam
#      withData : n
#    - name : QbPapersubject
#      withData : n
#    - name : QbPaperquestiondetail59
#      withData : n
#    - name : QbErrorquestionstat
#      withData : n
#    - name : QbAnswer88
#      withData : n
#    """
