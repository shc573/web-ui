#coding :utf-8
import requests
url="http://172.16.200.106:8056/Admin/Account/CheckUserLogin"
body={
'user_id':'linxue',
'password':'hongte@2018',
'city_address':'广东省东莞市',
'code':''
}
res1=requests.post(url=url,data=body)
print(res1.text)