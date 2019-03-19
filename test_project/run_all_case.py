#coding :utf-8
import unittest
from common import HTMLTestReportCN
casePath = "C:\\Users\\shc\\PycharmProjects\\untitled\\testcase"
discover = unittest.defaultTestLoader.discover(casePath,pattern="test*.py")
print(discover)
reportPath = "D:\\test_auto\\github\\test_project\\report\\"+"result.html"
fp = open(reportPath,"wb")
runner = HTMLTestReportCN.HTMLTestRunner(fp,title="测试报告",description="报告描述")
runner.run(discover)
fp.close()
