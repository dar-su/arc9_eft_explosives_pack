local ATT = {}

ATT.PrintName = "Tripwire installation kit"
ATT.CompactName = "Tripwire"
ATT.Icon = Material("entities/arc9_eft_tripwire.png", "mips smooth")
ATT.Description = [[An improvised booby trap kit made of tent pegs and wire with a carabiner. Allows the user to install tripwires on flat surfaces or to conceal explosives on an object.

Press firemode key to activate.]]
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tripwire"}

ATT.Firemodes = {
    { Mode = 1, PrintName = "Throw" },
    { Mode = 0, PrintName = "Tripwire" },
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetFiremode() == 2 then return anim .. "_mine" end
end

ARC9.LoadAttachment(ATT, "eft_grenade_tripwire")