function ad(_id, _pic1, _pic2, _sender, _subject, _hidden)
	if _hidden == nil then _hidden = false end
	if _subject == nil then _subject = 'Advertisement' end

	return {
		id = _id,
		pic1 = _pic1,
		pic2 = _pic2,
		sender = _sender,
		subject = _subject,
		hidden = _hidden
	}
end

local ads = {
--  ad ('/ad code', 'CHAR_FLOYD', 'ImageName', 'Ad Title', 'Ad Subtitle'),
	ad('247', 'CHAR_FLOYD', '247', '24/7 Shop'),
	ad('sahp', 'CHAR_FLOYD', 'CHP', 'San Andreas Highway Patrol', 'Phone Alert'),
	ad('bcso', 'CHAR_FLOYD', 'BCSO', 'Blaine County Sheriffs Office', 'Phone Alert'),
	ad('safr', 'CHAR_FLOYD', 'SAFR', 'San Andreas Fire & Rescue', 'Phone Alert'),
	ad('lspd', 'CHAR_FLOYD', 'LSPD', 'Los Santos Police Department', 'Phone Alert'),
	ad('coms', 'CHAR_FLOYD', 'COMS', 'San Andreas Communications', 'Phone Alert'),
	ad('news', 'CHAR_FLOYD', 'NEWS', 'Weazel News', 'Breaking News'),
	ad('sadosstaff', 'CHAR_FLOYD', 'SADOS', 'SADOS Staff Team', 'Announcement'),
	ad('security', 'CHAR_FLOYD', 'GRUPPE', 'Gruppe 6 Security', 'Phone Alert'),
	ad('marshal', 'CHAR_FLOYD', 'USMS', 'US Marshals Service', 'Mashals Report')
	

}
local function findAdById(id)
	local output 
	for _, item in ipairs(ads) do 
		if item.id == id then output = item end 
	end 
	return output
end



RegisterNetEvent('DisplayAd')
AddEventHandler('DisplayAd',function(adtype, inputText)
	local ad = findAdById(adtype)

	SetNotificationTextEntry('STRING');
	AddTextComponentString(inputText);
	SetNotificationMessage(ad.pic1, ad.pic2, true, 4, ad.sender, ad.subject);
	DrawNotification(false, true);
end)