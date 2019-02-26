FrameEditBox:Hide()
	FrameEditBox:SetMaxLetters(100000)
local function Export()
	print("Exporting EGPG")
	FrameEditBox:Insert("[center]Character Name | Rank | EP , GP [/center]")
	local d = {}
	for i = 1,GetNumGuildMembers(2) 
		do
			n1, n2, n3, n4, n5, n6, n7, n8  = GetGuildRosterInfo(i) 
			d.name = n1
			d.rank = n2
			d.epgp = n8
			FrameEditBox:Insert("[center]")
			FrameEditBox:Insert(d.name)
			FrameEditBox:Insert(" | ")
			FrameEditBox:Insert(d.rank)
			FrameEditBox:Insert(" | ")
			FrameEditBox:Insert(d.epgp)
			FrameEditBox:Insert("[/center]")
		end
	FrameEditBox:Show()
end
SLASH_EXPORT1 = "/ExportEPGP"
SlashCmdList[ "EXPORT" ] = Export
