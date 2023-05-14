FRLGVersion = 1.0
PlayerExtra3 = {0,0,0,0,0,0,0,0}
OriginalSprite = 0
PlayerID = 1

ObjLUT = {
    ball = 3,
    pokeball = 3,
    itemball = 3,
    item = 3,
    ditto = 4,
    dittodoll = 4,
    diglett = 5,
    diglettdoll = 5,
    swablu = 6,
    swabludoll = 6,
    bonsai = 7
}

function Hide(obj) 
    obj = string.lower(obj)
    if PlayerExtra3[PlayerID] <= 2 then OriginalSprite = PlayerExtra3[PlayerID] end
    if ObjLUT[obj] ~= nil then
        PlayerExtra3[PlayerID] = ObjLUT[obj]
        console:log("Hiding!")
    else 
        console:log("Invalid object") 
    end
end