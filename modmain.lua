print("!!! kitty_cat.lua loaded :3 !!!")


-- Assets --
Assets = {
    Asset("ATLAS", "images/kitty_cat_small.xml"),
    Asset("IMAGE", "images/kitty_cat_small.tex"),
    Asset("ANIM", "anim/kitty_cat.zip")
}

PrefabFiles = {
    "kitty_cat",
}

-- Characters --

local STRINGS = GLOBAL.STRINGS
local NAMES = STRINGS.NAMES
local GENERIC = STRINGS.CHARACTERS.GENERIC.DESCRIBE
--local WILSON = STRINGS.CHARACTERS.WILSON.DESCRIBE
local WILLOW = STRINGS.CHARACTERS.WILLOW.DESCRIBE
local WOLFGANG = STRINGS.CHARACTERS.WOLFGANG.DESCRIBE
local WENDY = STRINGS.CHARACTERS.WENDY.DESCRIBE
local WX78 = STRINGS.CHARACTERS.WX78.DESCRIBE
local WICKERBOTTOM = STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE
local WOODIE = STRINGS.CHARACTERS.WOODIE.DESCRIBE
--local MAXWELL = STRINGS.CHARACTERS.WAXWELL.DESCRIBE
--local WIGFRID = STRINGS.CHARACTERS.WIGFRID.DESCRIBE
local WEBBER = STRINGS.CHARACTERS.WEBBER.DESCRIBE
local WINONA = STRINGS.CHARACTERS.WINONA.DESCRIBE
local WARLY = STRINGS.CHARACTERS.WARLY.DESCRIBE
local WORTOX = STRINGS.CHARACTERS.WORTOX.DESCRIBE
local WORMWOOD = STRINGS.CHARACTERS.WORMWOOD.DESCRIBE
local WURT = STRINGS.CHARACTERS.WURT.DESCRIBE
local WALTER = STRINGS.CHARACTERS.WALTER.DESCRIBE
local WANDA = STRINGS.CHARACTERS.WANDA.DESCRIBE

-- Characters on Examine --

NAMES.KITTY_CAT = "Kitty Cat"
GENERIC.KITTY_CAT = "A cute kitty cat!"
--WILSON.KITTY_CAT = "Dinner..."
WILLOW.KITTY_CAT = "A cute kitty cat!"
WOLFGANG.KITTY_CAT = "A cute kitty cat!"
WENDY.KITTY_CAT = "A cute kitty cat!"
WX78.KITTY_CAT = "A cute kitty cat!"
WICKERBOTTOM.KITTY_CAT = "A cute kitty cat!"
WOODIE.KITTY_CAT = "A cute kitty cat!"
--MAXWELL.KITTY_CAT = "A cute kitty cat!"
--WIGFRID.KITTY_CAT = "A cute kitty cat!"
WEBBER.KITTY_CAT = "A cute kitty cat!"
WINONA.KITTY_CAT = "A cute kitty cat!"
WARLY.KITTY_CAT = "A cute kitty cat!"
WORTOX.KITTY_CAT = "A cute kitty cat!"
WORMWOOD.KITTY_CAT = "A cute kitty cat!"
WURT.KITTY_CAT = "A cute kitty cat!"
WALTER.KITTY_CAT = "A cute kitty cat!"
WANDA.KITTY_CAT = "A cute kitty cat!"

-- Huggabe Action Check --
AddAction("HUG", "Hug!", function(act)
    if act.invobject then
        act.invobject.components.huggable:Hug(act.doer)

        return true
    end

    return false
end)

-- Huggable Component --
AddComponentAction("INVENTORY", "huggable", function(inst, doer, actions, right)
    if doer.replica.inventory:GetActiveItem() == nil and (doer.replica.rider == nil or not doer.replica.rider:IsRiding()) then
        table.insert(actions, GLOBAL.ACTIONS.HUG)
    end
end)

-- HUG --
AddStategraphActionHandler("wilson", GLOBAL.ActionHandler(GLOBAL.ACTIONS.HUG, "dolongaction"))
AddStategraphActionHandler("wilson_client", GLOBAL.ActionHandler(GLOBAL.ACTIONS.HUG, "dolongaction"))