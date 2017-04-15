;カタカナひらがなキーを変換キーに割り当て
vkF2sc070::
send, {vk1Csc079}
return

;CapsLock→BackSpace
vkF0sc03A::
send, {BackSpace}
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

;http://sato001.com/high-speed-input-keyboard を参考にした。

;無変換+IJKL: 矢印
vk1Dsc07B & I::
if GetKeyState("Shift", "P")
	if GetKeyState("Ctrl", "P")
		send, ^+{Home}
	else
		send, +{Up}
else
	if GetKeyState("Ctrl", "P")
		send, ^{Home}
	else
		send, {Up}
return

vk1Dsc07B & K::
if GetKeyState("Shift", "P")
	if GetKeyState("Ctrl", "P")
		send, ^+{End}
	else
		send, +{Down}
else
	if GetKeyState("Ctrl", "P")
		send, ^{End}
	else
		send, {Down}
return

vk1Dsc07B & L::
if GetKeyState("Shift", "P")
	if GetKeyState("Ctrl", "P")
		send, +{End}
	else
		send, +{Right}
else
	if GetKeyState("Ctrl", "P")
		send, {End}
	else
		send, {Right}
return

vk1Dsc07B & J::
if GetKeyState("Shift", "P")
	if GetKeyState("Ctrl", "P")
		send, +{Home}
	else
		send, +{Left}
else
	if GetKeyState("Ctrl", "P")
		send, {Home}
	else
		send, {Left}
return

;無変換+; : Enter
vk1Dsc07B & vkBBsc027::
send {Enter}
return

;無変換 + M : BackSpace
vk1Dsc07B & M::
send {BackSpace}
return

;無変換 + N : Delete
vk1Dsc07B & N::
send {Delete}
return

;無変換 + Z : Ctrl + Z
vk1Dsc07B & Z::
send ^{z}
return

;無変換 + Y : Ctrl + Y
vk1Dsc07B & Y::
send ^{y}
return
