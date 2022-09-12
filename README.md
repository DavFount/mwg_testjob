# Sample Job

#### Description
This is a sample job for the MWG Job System


### FEATURES
- Basic Interaction with commands to trigger all the events and fatures of MWG Job System

### Config
```lua
Config = {
    -- Job Information
    JobName = "Hunter",
    Description = "Find animals and kill them for XP.",

    -- Job Event Information
    OnDuty = "mwg_examplejob:onduty",
    OffDuty = "mwg_examplejob:offduty",
    AddXP = "mwg_examplejob:addXp",
    RemoveXP = "mwg_examplejob:remXp",
    LevelUp = "mwg_examplejob:levelup",
    MaxLevel = "mwg_examplejob:maxlevel"
}

```

### Commands
```
/addxp - Increase your xp
/removexp - Lower your XP (Can only go to the base for your current level)
```

#### INSTALATION
- add `ensure mwg_testjob` to your `resources.cfg`.
- restart server, enjoy.

### SUPPORT
Feel free to create an issue if you need assitance or have issues.