; cheet sheet
; +Shift, ^Ctrl, !Alt, #Win
; キーリスト: http://ahkwiki.net/KeyList

;カタカナひらがなキーを変換キーに割り当て
vkF2sc070::
send, {vk1Csc079}
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

;テンキーのInsertを削除
NumpadIns::
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


;[変換 + 何か]は主にgoogle chrome向け
;変換再定義(これがないと変換が機能しない)
vk1Csc079::
send, {vk1Csc079}
return

;変換 + A: Ctrl + Shift + Tab
vk1Csc079 & A::
send +^{Tab}
return

;変換 + D: Ctrl + Tab
vk1Csc079 & D::
send ^{Tab}
return

;変換 + W: Ctrl + W
vk1Csc079 & W::
send ^{w}
return

;変換 + E: Ctrl + E
vk1Csc079 & E::
send ^{e}
return

;変換 + S: Ctrl + S
vk1Csc079 & S::
send ^{s}
return

;変換 + T: Ctrl + T
vk1Csc079 & T::
send ^{t}
return

;変換 + L: [Ctrl + L]→[Ctrl + C]
vk1Csc079 & L::
send ^{l}
return

;http://did2memo.net/2014/03/19/autohotkey-insert-text/ より
; 文字をまとめて高速入力する関数
InsertText(Content) {
    cb_bk = %ClipboardAll%
    Clipboard = %Content%
    Send, ^v
    Sleep, 100
    Clipboard = %cb_bk%
}

;変換 + C: Webのタイトル取得
vk1Csc079 & C::
send ^{l}

;chromeの仕様でclipboard経由でjavascript:とはかけない。
InsertText("javascript")
;"→""に変換(エスケープ文字 http://ahkwiki.net/-EscapeChar より)
InsertText(": (function(text){ var ta = document.createElement(""textarea""); ta.value = text; document.body.appendChild(ta); ta.select(); document.execCommand(""copy""); ta.parentElement.removeChild(ta); })(document.title)")
send {Enter}
return

;変換 +  数字: Ctrl + 数字
vk1Csc079 & 0::
send ^{0}
return
vk1Csc079 & 1::
send ^{1}
return
vk1Csc079 & 2::
send ^{2}
return
vk1Csc079 & 3::
send ^{3}
return
vk1Csc079 & 4::
send ^{4}
return
vk1Csc079 & 5::
send ^{5}
return
vk1Csc079 & 6::
send ^{6}
return
vk1Csc079 & 7::
send ^{7}
return
vk1Csc079 & 8::
send ^{8}
return
vk1Csc079 & 9::
send ^{9}
return
