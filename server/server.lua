-- JobSystem Server Side API
local JobSystem = {}
TriggerEvent("getMWGJobSystem", function(jobsystem)
    JobSystem = jobsystem
end)

-- Registers your job with Job System
JobSystem.registerJob(Config.JobName, Config.Description)
