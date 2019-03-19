#!/usr/bin/python3

import unittest
class Test(unittest.TestCase):
    def test_01(self):
        a=1
        b=2
        c=a+b
        self.assertEquals(c,3)#1+2=3正确
        print('用例01执行完成')

    def test_02(self):
        a=2
        b=3
        c=a*b
        self.assertEquals(c,5)#2*3=6正确
        print('用例02执行完成')
if __name__ == '__main__':
    unittest.main()

