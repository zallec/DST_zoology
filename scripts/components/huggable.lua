-- Constructor --
local Huggable = Class(function(self,inst)
    self.inst = inst

    self.sanity_gain = 0
end)

-- Hug Set Sanity Increase Amt --
function Huggable:SetSanityGain(val)
    self.sanity_gain = val
end

-- Hug Sanity Increase --
function Huggable:GetSanityGain()
    return self.sanity_gain
end

-- Hug Function --
function Huggable:Hug(doer)

    if doer and doer.components.sanity then
        doer.components.sanity:DoDelta(self.sanity_gain)
    end
end

return Huggable