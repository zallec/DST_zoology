local assets = {
    Asset("ANIM", "anim/kitty_cat.zip"),

    Asset("ATLAS", "images/kitty_cat_small.xml"),
    Asset("IMAGE", "images/kitty_cat_small.tex")
}

local function foo()
    local inst = CreateEntity()
    local sound = inst.entity:AddSoundEmitter()

    inst:SetPrefabName("kitty_cat")

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    
    inst.entity:SetPristine()

    -- Anim States --
    inst.AnimState:SetBank("kitty_cat")
    inst.AnimState:SetBuild("kitty_cat")
    inst.AnimState:PlayAnimation("idle")
    inst.AnimState:SetScale(1.5, 1.5, 1.5)

    -- stackable inventory --


    if not TheWorld.ismastersim then
        return inst
    end

    -- Components --
    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "kitty_cat_small"
    inst.components.inventoryitem.atlasname = "images/kitty_cat_small.xml"

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = 10 -- change to 1

    inst:AddComponent("sanityaura")
	inst.components.sanityaura.aura = (TUNING.SANITYAURA_SMALL * 0.5)

    inst:AddComponent("huggable")
    inst.components.huggable:SetSanityGain(15)


    
    
    return inst
end


return Prefab("kitty_cat", foo, assets);