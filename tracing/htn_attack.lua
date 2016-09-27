--[[
  HTN Planner tutorial code for lecture at CEDEC2016

  Copyright (c) 2016, Yohei Hase. All rights reserved.
  This source code is licensed under the MIT license.
]]


require("htn")

--defined
--[[
	実装部分：
	
		攻撃(attack):
			遠距離攻撃：
				攻撃準備(attackPrepare) > energyShot

		攻撃準備(attackPrepare)：
			エネルギーは溜まっているか(IsEnergy):false
				敵が視界にいるか(IsTargeting):true
					視界外に移動する movingHide > chargeEnergy > attackPrepare
				:false
					チャージ chargeEnergy > attackPrepare
			:true
				敵が視界にいるか(IsTargeting):true
					準備オーケー {}
				:false
					ターゲットを探す searchTarget > attackPrepare


]]
--[[
	state:
		bTargeting		--ターゲットを捉えているか
		chargedEnergy	--エネルギーがチャージされているか

--utility:
	IsEnergy
	IsTargeting

--primitive:
	energyShot
	movingHide
	chargeEnergy
	searchTarget

--compound:
	attack
	attackPrepare


]]


domain = { primitive={}, compound={} }

--------------------------------------------------
-- Primitive Task



--------------------------------------------------
-- Compound Task

-- ターゲットを倒す



--------------------------------------------------
-- State

state = {}


plan = htn(domain, state, {{"killTarget"}})
print_plan(plan)
