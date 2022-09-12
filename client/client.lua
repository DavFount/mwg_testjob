-- JobSystem Client API
local JobSystem = {}
TriggerEvent("getMWGJobSystem", function(jobsystem)
    JobSystem = jobsystem
end)

--[[
JobSystem.getJobInfo - Returns the following attributes
jobName
jobID
totalXp
level
nextLevel
nextLevelXp
currentLevelMinXp
]]

RegisterCommand("hunter", function(source, args, rawCommand)
    local jobDetails = JobSystem.getJobInfo(source)
    if jobDetails.jobName == Config.JobName and JobSystem.isOnDuty then
        print(string.format('Hunter Menu: You are on duty and a %s!', jobDetails.jobName))
    end
end)

-- Examples to Add or Remove XP
RegisterCommand("addxp", function(source, args, rawCommand)
    if args[1] == nil then return end
    TriggerEvent("mwg_jobsystem:addxp", args[1])
end)

RegisterCommand("remxp", function(source, args, rawCommand)
    if args[1] == nil then return end
    TriggerEvent("mwg_jobsystem:remxp", args[1])
end)


-- Available Client Events
RegisterNetEvent("mwg_examplejob:onduty", function()
    print('On-Duty Called')
end)

RegisterNetEvent("mwg_examplejob:offduty", function()
    print('Off-Duty Called')
end)

RegisterNetEvent("mwg_examplejob:addXp", function()
    print("XP Added")
end)

RegisterNetEvent("mwg_examplejob:remXp", function()
    print("XP Removed")
end)

RegisterNetEvent("mwg_examplejob:levelup", function()
    print("Level Up")
end)

RegisterNetEvent("mwg_examplejob:maxlevel", function()
    print("Reached Max Level")
end)
