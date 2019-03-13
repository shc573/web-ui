
select * from tb_car_personal where car_business_id = 'TDC5012018031303' 
select * from tb_fsd_customer where business_id = 'TDC5012018031303' 
select * from tb_yb_bank_card where identify_card = '623023199905017784'; -- 身份证号码 tb_fsd_customer identify_card
select * from tb_cunguan_user where platformUserId = '2e24b4be-788a-48a9-beee-249307fd52cc';  -- tb_yb_bank_card user_guid



select * from tb_business where business_id = 'TDC5012018031303'


















select * from tb_account where account_id='61a6cdb42f8a40c58b3a5cef4e4f6551'#查某账户是否存在61a6cdb42f8a40c58b3a5cef4e4f6551  9BD2E3E7-CB56-4749-B9CE-2BA581AD8203

select UserId from tb_issue where IssueId='0bbf27dc-3373-4bd7-9102-6a78c635e340'#平台账户

select * from tb_account_list where account_id='04DC0677-0A6C-4C38-92D8-12FA3FADF940' and business_id='TDC5012018013003'#分公司流水
select * from tb_account_list where account_id='0f6494177d224474a5bdd84b0ab31943'#押金账户流水
select * from tb_account_list where account_id='95e2e7d5-8715-499c-8bb3-a0c389fae022'#平台账户流水0f6494177d224474a5bdd84b0ab31943
select * from tb_account_list where account_id='E74D6597-C46A-435B-969D-72AFAAD3E661'#担保公司流水
select * from tb_account_list where account_id='0db3cc5aef2f45199979857a6b5167cd'#借款人账户流水   孙0db3cc5aef2f45199979857a6b5167cd 磊32a1f8bb65dc4761bf919b07d8da9b57
select * from tb_account_list where account_id='98075b88-e93d-11e7-94ed-94c69109b34a'#宝付账户流水
select * from tb_account_list where account_id='5dc3feeb5b61421c8f319cb6aded1b6b'#贷后还款账户
select * from tb_account_list where account_id='97ff0bff-e93d-11e7-94ed-94c69109b34a'#投资人账户

select * from tb_account_list where account_id='46c5e350-e6c6-11e7-ac19-94c69109b34a'#平台账户流水

select * from tb_account_list where account_id='97dd71d3-e93d-11e7-94ed-94c69109b34a'

select queryFullsuccessDate from tb_issue where IssueId='163901e5-d011-435f-ab72-fe8a8b392e67'#满标时查看是否生成满标时间
update tb_issue set queryFullsuccessDate=NULL where IssueId='0af9e9ce-44d7-49f0-97c3-ccd6a09dad1d'#清空满标时间

select * from tb_business_apply_output where fee_item_id='e71fa201-5c81-40bc-b20c-e6f0d802924c'#查看fee_id是否存在，对应fee_item_id

select BranchCompanyId from tb_issue where IssueId='0af9e9ce-44d7-49f0-97c3-ccd6a09dad1d'#查看分公司账户标的来源ID
SELECT a.* FROM tb_issue a WHERE a.BranchCompanyId='04DC0677-0A6C-4C38-92D8-12FA3FADF940'

select * from tb_account_list where business_id='TDC5012018020702' #and after_id='ZQ01-00';#产生所有的流水TDC5012018020601  TDF5012018012403 TDC5012018020503(此单用来测试展期00期的资金分发)  TDF5012018020701
select * from tb_account where account_no='HTA2017121900175'#查询借款人账户ID

select * from tb_car_business_after where car_business_id='TDC5012018020701'#修改还款日期
select * from tb_issue_business_after_detail where business_id='TDF5012018020811'
select * from tb_business where business_id='TDC50220160808037B'
select * from tb_issue_business where business_id='TDC5012018020702'; 
select * from tb_issue_business where issue_id='768c1b41-3db1-4f7a-b6db-1c7930b39490'
select * from tb_issue where IssueId in('c514953e-e6d8-4c84-8240-c445e95e748f','0b968ef2-64da-4a2b-868e-79479090c057')
select * from tb_issue_withdraw where ProjectId='6bc53bd6-32c5-446a-872a-1d1765d6bba1'
select * from tb_account where account_id='5d6c87714dd84337ad4847bb411438c0'

SELECT a.*
FROM tb_rabbitmq_log a
WHERE a.queue_name='cams.account.queue.AccountListCreatedQueueBatch'
and a.message like '%TDF5012018020811%'
ORDER BY a.create_time DESC
LIMIT 100                          #查看是否MQ消费成功

select is_tuandai_repay from tb_business where business_id='TDC5012018020102'#查询是否可以资金分发（为1可以分发）
select * from tb_advance_log where business_id='TDC5012018020702'#查询是否垫付
select * from tb_business_apply_output where business_id='TDFZQ5012018020401'
select * from tb_issue_distribute_log a where a.business_id='TDC5012018020702'#更改资金分发状态


select batch_id from tb_issue_distribute_log where business_id='TDC5012018020701';         #检查资金分发不成功
select * from tb_issue_send_tuandai_log where issue_id='779bb8e6-be41-4c7f-93db-ce7e6492abbc'/*上面的batch_id*/ order by update_time desc limit 100;


SELECT PreCycDate,*FROM dbo.Subscribe WHERE ProjectId='b90a9075-f452-4d09-b8bc-8b66b77fd53a'; 
   
SELECT CycDate,*FROM dbo.SubscribeDetail WHERE ProjectId='b90a9075-f452-4d09-b8bc-8b66b77fd53a'  ;
  
  
SELECT CycDate,*FROM dbo.ReturnShareProfit WHERE ProjectId='b90a9075-f452-4d09-b8bc-8b66b77fd53a' ;



-- cde01fd4-b6a2-4709-9e9e-d63d8b4fee9f,5abad4cc-0d69-45fb-815b-37e0db4f02ba
select * from tb_issue_business a where a.business_id = 'TDC5012018020502';

select * from tb_car_business_after a where a.car_business_id = 'TDC5012018020502';