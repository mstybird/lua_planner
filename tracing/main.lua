--tableのコピー
--ただの代入だと参照をコピーするだけ
--ただunpackするだけだと、tableの中身がtableだった場合、
--そのtableは参照のコピーとして処理されてしまうので、
--tableだったら展開してコピーという処理を取る
function deepcopy(a)
    if type(a)=="table" then
        local copy={}
        print("Copy")
        for key,var in next,a,nil do
            copy[key]=deepcopy(var)
        end
        return copy
    else
        print(a)
        return a
    end
end

--tableの連結
--aの後ろにbを連結する
function array_merge(a,b)
    local newArray={table.unpack(a)}
    for i,var in ipairs(b) do
        table.insert(newArray,var)
    end
    return newArray
end

--プランの出力
function print_plan(plan)
    if plan == false or plan == nil then
        print("not found")
    else
        for i,var in ipairs(plan) do
            print(i .. ": " .. table.concat(var,", "))
        end
    end
end

--domain:タスク
--state:プラン実行前の状態
--tasks:タスク
function htn(domain,state,tasks)
    return htn_internal(domain,state,tasks,{})
end

function htn_internal(domain,state,tasks,plan)
    --次のタスクがなければプラン確定
    if next(task)==nil then
        return plan
    end
    --タスクがあれば処理する
    --先頭のタスク(実行するタスク)を一つ
    local task=table.remove(tasks,1)


    local task
end

state = {}
state.hasTarget = 2
state.hasAmmo = 1
state.hasMagazine = 5
state.canSeeTarget = 4
state.atTarget = 3

for key,var in next,state,nil do
    print(var)
end

a=deepcopy(state)
