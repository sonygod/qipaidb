
----------------------------------------------------------------------------------------------------

USE QPPlatformDB
GO

-- 删除数据
DELETE GameTypeItem
DELETE GameKindItem
DELETE GameNodeItem
DELETE GameGameItem
DELETE DataBaseInfo
DELETE PrivateInfo
GO

----------------------------------------------------------------------------------------------------

INSERT DataBaseInfo (DBAddr, DBPort, DBUser, DBPassword,MachineID,Information) VALUES ('127.0.0.1',1433,'sa','fangyuan1793','','')

----------------------------------------------------------------------------------------------------

-- 类型数据
INSERT GameTypeItem (TypeID, TypeName, SortID, Nullity) VALUES ( 1, '财富游戏',100, 0)
INSERT GameTypeItem (TypeID, TypeName, SortID, Nullity) VALUES ( 2, '牌类游戏',200, 0)
INSERT GameTypeItem (TypeID, TypeName, SortID, Nullity) VALUES ( 3, '棋类游戏',300, 0)
INSERT GameTypeItem (TypeID, TypeName, SortID, Nullity) VALUES ( 4, '麻将游戏',400, 0)
INSERT GameTypeItem (TypeID, TypeName, SortID, Nullity) VALUES ( 5, '休闲游戏',500, 0)
INSERT GameTypeItem (TypeID, TypeName, SortID, Nullity) VALUES ( 6, '视频游戏',600, 0)

----------------------------------------------------------------------------------------------------

INSERT GameKindItem (KindID, GameID, TypeID, JoinID,SortID,KindName,ProcessName,GameRuleUrl,DownLoadUrl,Nullity) VALUES ( 122,122,2,0,100, '百家乐','BaccaratNew.exe',0,0,0)
INSERT GameGameItem (GameID, GameName, SuporType, DataBaseAddr,DataBaseName,ServerVersion,ClientVersion,ServerDLLName,ClientExeName) VALUES ( 122, '百家乐',1,'127.0.0.1','QPTreasureDB',101056515,101056515,'BaccaratNewServer','BaccaratNew.exe')

INSERT GameKindItem (KindID, GameID, TypeID, JoinID,SortID,KindName,ProcessName,GameRuleUrl,DownLoadUrl,Nullity) VALUES ( 27,27,2,0,100, '牛哄哄','OxNew.exe',0,0,0)
INSERT GameGameItem (GameID, GameName, SuporType, DataBaseAddr,DataBaseName,ServerVersion,ClientVersion,ServerDLLName,ClientExeName) VALUES ( 27, '牛哄哄',1,'127.0.0.1','QPTreasureDB',101056515,101056515,'OxNewServer','OxNew.exe')

INSERT GameKindItem (KindID, GameID, TypeID, JoinID,SortID,KindName,ProcessName,GameRuleUrl,DownLoadUrl,Nullity) VALUES ( 302,302,2,0,100, '血战麻将','SparrowXZ.exe',0,0,0)
INSERT GameGameItem (GameID, GameName, SuporType, DataBaseAddr,DataBaseName,ServerVersion,ClientVersion,ServerDLLName,ClientExeName) VALUES ( 302, '血战麻将',1,'127.0.0.1','QPTreasureDB',101056515,101056515,'SparrowXZServer','SparrowXZ.exe')

INSERT PrivateInfo 	(KindID, PlayCout1, PlayCost1,PlayCout2, PlayCost2,PlayCout3, PlayCost3,PlayCout4, PlayCost4,CostGold) 
			VALUES ( 310, 8,1,16,2,0,0,0,0,50)
INSERT PrivateInfo 	(KindID, PlayCout1, PlayCost1,PlayCout2, PlayCost2,PlayCout3, PlayCost3,PlayCout4, PlayCost4,CostGold) 
			VALUES ( 302, 6,1,12,2,0,0,0,0,50)

INSERT GameKindItem (KindID, GameID, TypeID, JoinID,SortID,KindName,ProcessName,GameRuleUrl,DownLoadUrl,Nullity) VALUES ( 108,108,2,0,100, '奔驰宝马','BumperCarBattle.exe',0,0,0)
INSERT GameGameItem (GameID, GameName, SuporType, DataBaseAddr,DataBaseName,ServerVersion,ClientVersion,ServerDLLName,ClientExeName) VALUES ( 108, '奔驰宝马',1,'127.0.0.1','QPTreasureDB',101056515,101056515,'BumperCarBattleServer','BumperCarBattle.exe')

INSERT GameKindItem (KindID, GameID, TypeID, JoinID,SortID,KindName,ProcessName,GameRuleUrl,DownLoadUrl,Nullity) VALUES ( 404,404,2,0,100, '轮盘','Round.exe',0,0,0)
INSERT GameGameItem (GameID, GameName, SuporType, DataBaseAddr,DataBaseName,ServerVersion,ClientVersion,ServerDLLName,ClientExeName) VALUES ( 404, '轮盘',1,'127.0.0.1','QPTreasureDB',101056515,101056515,'RoundServer','Round.exe')


INSERT GameKindItem (KindID, GameID, TypeID, JoinID,SortID,KindName,ProcessName,GameRuleUrl,DownLoadUrl,Nullity) VALUES ( 310,310,2,0,100, '湖南麻将','HNMJ.exe',0,0,0)
INSERT GameGameItem (GameID, GameName, SuporType, DataBaseAddr,DataBaseName,ServerVersion,ClientVersion,ServerDLLName,ClientExeName) VALUES ( 310, '湖南麻将',1,'127.0.0.1','QPTreasureDB',101056515,101056515,'HNMJServer','HNMJ.exe')


INSERT GameKindItem (KindID, GameID, TypeID, JoinID,SortID,KindName,ProcessName,GameRuleUrl,DownLoadUrl,Nullity) VALUES ( 320,320,2,0,100, '南昌麻将','NCMJ.exe',0,0,0)
INSERT GameGameItem (GameID, GameName, SuporType, DataBaseAddr,DataBaseName,ServerVersion,ClientVersion,ServerDLLName,ClientExeName) VALUES ( 320, '南昌麻将',1,'127.0.0.1','QPTreasureDB',101056515,101056515,'NCMJServer','NCMJ.exe')


GO


USE QPGameMatchDB
GO
DELETE MatchPublic
DELETE MatchImmediate
DELETE MatchLockTime
DELETE MatchReward

INSERT MatchPublic (MatchID,MatchNo,KindID,MatchName,MatchType,MatchFeeType,MatchFee,MatchEnterScore,MemberOrder,CollectDate) VALUES (1,1,302,N'血战到底比赛',1,0,100,1000,0,0)
INSERT MatchImmediate (MatchID,MatchNo,StartUserCount,AndroidUserCount,InitialBase,InitialScore,MinEnterGold,PlayCount,SwitchTableCount,PrecedeTimer) 
VALUES (1,1,4,0,100,1000,100,2,0,0)

INSERT MatchPublic (MatchID,MatchNo,KindID,MatchName,MatchType,MatchFeeType,MatchFee,MatchEnterScore,MemberOrder,CollectDate) VALUES (3,3,302,N'血战到底比赛',0,0,100,1000,0,0)
INSERT MatchLockTime (MatchID,MatchNo,StartTime,EndTime,InitScore,CullScore,MinPlayCount) 
VALUES (3,3,'2016-04-21 0:0:0','2017-04-21 0:0:0',1000,100,2)

INSERT MatchReward (MatchID,MatchNo,MatchRank,RewardGold,RewardMedal,RewardExperience,RewardDescibe) VALUES (1,1,1,4000,0,0,N'金币')
INSERT MatchReward (MatchID,MatchNo,MatchRank,RewardGold,RewardMedal,RewardExperience,RewardDescibe) VALUES (1,1,2,3000,0,0,N'金币')
INSERT MatchReward (MatchID,MatchNo,MatchRank,RewardGold,RewardMedal,RewardExperience,RewardDescibe) VALUES (1,1,3,2000,0,0,N'金币')
INSERT MatchReward (MatchID,MatchNo,MatchRank,RewardGold,RewardMedal,RewardExperience,RewardDescibe) VALUES (1,1,4,1000,0,0,N'金币')
GO