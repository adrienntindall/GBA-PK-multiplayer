require "include.SpriteData"

FRLGVersion = 1.0
PlayerExtra2 = {0,0,0,0,0,0,0,0}
PlayerExtra3 = {0,0,0,0,0,0,0,0}
OriginalSprite = 0
PlayerID = 1

ObjLUT = {
    ball = 3, pokeball = 3, itemball = 3, item = 3,
    ditto = 4, dittodoll = 4,
    diglett = 5, diglettdoll = 5,
    swablu = 6, swabludoll = 6,
    note = 7, notemat = 7,
    azurill = 8, azurilldoll = 8,
    cushion = 9, ballcushion = 9, pillow = 9, ballpillow = 9,
    baltoy = 10, baltoydoll = 10,
    waterballoon = 11, balloon = 11, blueballoon = 11,
    rock = 12, rocksmash = 12, rocksmashrock = 12, breakrock = 12, breakablerock = 12,
    buizel = 13, buizeldoll = 13,
    bulbasaur = 14, bulba = 14, bulbasaurdoll = 14,
    piplup = 15, piplupdoll = 15,
    cardboard = 16, cardboardbox = 16, snake = 16, box = 16,
    charmander = 17, charmanderdoll = 17,
    chatot = 18, chatotdoll = 18, taka = 18,
    chikorita = 19, chikoritadoll = 19,
    cutetv = 20, pinktv = 20, skittytv = 20,
    cuttree = 21, cuttreeemerald = 21, emeraldcuttree = 21, tree = 21, cut = 21,
    cyndaquil = 22, cyndaquildoll = 22, adrienn = 22, adriennsn = 22,
    duskull = 23, duskulldoll = 23,
    fence = 24,
    fossil = 25, fossilemerald = 25, fossilerse = 25, anorith = 25, lileep = 25,
    wii = 26,
    gengar = 27, gengardoll = 27, gen1gengar = 27,
    geodude = 28, geodudedoll = 28, gen1geodude = 28,
    chimchar = 29, chimchardoll = 29,
    grimer = 30, gen1grimer = 30, grimerdoll = 30, sludge = 30,
    gulpin = 31, gulpindoll = 31, deeznuts = 31,
    happiny = 32, happinydoll = 32,
    plusle = 33, plusledoll = 33,
    kecleon = 34, kecleondoll = 34, shopkeeper = 34,
    lotad = 35, lotaddoll = 35,
    machop = 36, machopdoll = 36, gen1machop = 36,
    magikarp = 37, karp = 37, koiking = 37, magikarpdoll = 37, gen1magikarp = 37,
    manaphy = 38, manaphydoll = 38,
    marill = 39, marilldoll = 39,
    meowth = 40, meowthdoll = 40, thatsright = 40,
    poliwag = 41, poliwagdoll = 41, babycjya = 41,
    minun = 42, minundoll = 42,
    mud = 43, mudball = 43,
    mudkip = 44, mudkipdoll = 44, doyoulike = 44,
    munchlax = 45, munchlaxdoll = 45,
    n64 = 46, nintendo64 = 46,
    oddish = 47, oddishdoll = 47, gen1oddish = 47,
    pichu = 48, pichudoll = 48,
    roundtv = 49, seedottv = 49, acorntv = 49,
    seedot = 50, seedotdoll = 50,
    shellder = 51, shell = 51, gen1shellder = 51,
    chair = 52, smallchair = 52,
    smoochum = 53, smoochumdoll = 53,
    squirtle = 54, squirtledoll = 54,
    staryu = 55, staryudoll = 55, hyaa = 55,
    statue = 56, rhydon = 56, monster = 56, rhydonstatue = 56, victoryroadstatue = 56, monsterstatue = 56,
    snes = 57, ness = 57, supernintendoentertainmentsystem = 57, supernintendo = 57, nintendoentertainmentsystem = 57,
    surfpikachu = 58, coolpikachu = 58,
    tentacruel = 59, tentacrueldoll = 59, gen1tentacruel = 59,
    togepi = 60, togepidoll = 60,
    torchic = 61, torchicdoll = 61,
    totodile = 62, totodiledoll = 62,
    treecko = 63, treeckodoll = 63,
    turtwig = 64, turtwigdoll = 64, isaac = 64, turtleisaac = 64,
    unown = 65, unowndoll = 65, alph = 65,
    natu = 66, natudoll = 66,
    porygon2 = 67, p2 = 67, porygon2doll = 67, p2doll = 67,
    wooper = 68, smallant = 68, wooperdoll = 68, smant = 68,
    voltorb = 69, voltorbdoll = 69,
    weedle = 70, weedledoll = 70,
    wobbuffet = 71, wobbuffetdoll = 71,
    wynaut = 72, whynot = 72, wynautdoll = 72, idk = 72
}

math.randomseed(os.time())

function Hide(obj) 
    obj = string.lower(obj)
    if PlayerExtra3[PlayerID] <= 2 then OriginalSprite = PlayerExtra2[PlayerID] end
    if obj == "random" then
        PlayerExtra3[PlayerID] = math.random(3, 72)
    elseif ObjLUT[obj] ~= nil then
        PlayerExtra3[PlayerID] = ObjLUT[obj]
        console:log("Hiding!")
    else 
        console:log("Invalid object") 
    end
end