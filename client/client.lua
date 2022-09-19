-- JobSystem Client API
local JobSystem = {}
TriggerEvent("getMWGJobSystem", function(jobsystem)
    JobSystem = jobsystem
end)

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
AddEventHandler("mwg_jobsystem:onDutyEvent", function(jobName)
    if jobName == Config.JobName then
        print('On-Duty Called')
    end
end)

AddEventHandler("mwg_jobsystem:offDutyEvent", function(jobName)
    if jobName == Config.JobName then
        print('Off-Duty Called')
    end
end)

AddEventHandler("mwg_jobsystem:ExpGainEvent", function()
    local jobDetails = JobSystem.getJobInfo(source)
    if jobDetails.jobName == Config.JobName then
        print("XP Added")
    end
end)

AddEventHandler("mwg_jobsystem:ExpLossEvent", function()
    local jobDetails = JobSystem.getJobInfo(source)
    if jobDetails.jobName == Config.JobName then
        print("XP Removed")
    end
end)

AddEventHandler("mwg_jobsystem:levelUpEvent", function()
    local jobDetails = JobSystem.getJobInfo(source)
    if jobDetails.jobName == Config.JobName then
        print("Level Up")
    end
end)

AddEventHandler("mwg_jobsystem:maxLevelEvent", function()
    local jobDetails = JobSystem.getJobInfo(source)
    if jobDetails.jobName == Config.JobName then
        print("Reached Max Level")
    end
end)
