;カタカナひらがなキーを無変換キーに割り当て
vkF2sc070::
send, {vk1Dsc07B}
return

;Home, End関連

;無変換再定義(これがないと無変換が機能しない)
vk1Dsc07B::
send, {vk1Dsc07B}
return

vk1Dsc07B & Up::
if GetKeyState("Shift", "P") || GetKeyState("Alt", "P")
    send, ^+{Home}
else
	send, ^{Home}
return

vk1Dsc07B & Down::
if GetKeyState("Shift", "P") || GetKeyState("Alt", "P")
    send, ^+{End}
else
	send, ^{End}
return

vk1Dsc07B & Left::
if GetKeyState("Shift", "P") || GetKeyState("Alt", "P")
    send, +{Home}
else
	send, {Home}
return

vk1Dsc07B & Right::
if GetKeyState("Shift", "P") || GetKeyState("Alt", "P")
    send, +{End}
else
	send, {End}
return

;タップゾーン(コーナータップ。左上、右上)(現在左上、右上のタップゾーンは機能していない。)
Media_Prev::
	send, #^{Left}
return

Media_Next::
	send, #^{Right}
return

;InsertをDeleteに割り当て(Insert事故防止)
Insert::
send, {Delete}
return