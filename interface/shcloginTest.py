#!/usr/bin/env python
#coding:utf-8
import unittest,requests,re

class logintest(unittest.TestCase):
        def setUp(self):
            self.Login_url = "http://127.0.0.1:8000/"
            self.Product_list_url = "http://127.0.0.1:8000/login_action/"
                

        #开始测试
        def test_login(self):
                #进入登录页面
                try:
                        data = requests.get(self.Login_url)
                except Exception as e:
                        print(e)
                text = data.text
                #csrf_token = str(re.findall(r"name=\'csrfmiddlewaretoken\' value=\'(.+?)\'/>",text))
                #csrf_token = csrf_token[2:-2]
                csrf_token="rS9yP6GxVmorHzwGATAvxv6TBB4HN3MlKPHhuflprsICm872hqfVDe75aML7eRWI"
                print (csrf_token)
                payload ={"username":"shc","password":"shc573573","csrfmiddlewaretoken":csrf_token}
                cookies = {"csrftoken":csrf_token}
                try:
                        data = requests.post(self.Product_list_url,data=payload,cookies=cookies)
                except Exception as e:
                        print(e)
                self.assertEqual("200",str(data.status_code))
                self.assertIn("放入购物车",str(data.text))


        #def tearDown(self):    

if __name__=='__main__':
        #构造测试集
        suite=unittest.TestSuite()
        suite.addTest(logintest("test_login"))
        #运行测试集合
        runner=unittest.TextTestRunner()
        runner.run(suite)
