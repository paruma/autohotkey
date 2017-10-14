; cheet sheet
; +Shift, ^Ctrl, !Alt, #Win
; キーリスト: http://ahkwiki.net/KeyList
; 言語をIniとして読んでおくと、コードのハイライトが読みやすくなる。


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

if GetKeyState("Shift", "P") || GetKeyState("Alt", "P")
vk1Dsc07B & Down::
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

;無変換 + H : Home
vk1Dsc07B & H::
send {Home}
return

;無変換 + : : End
vk1Dsc07B & vkBAsc028 ::
send {End}
return


;[変換 + 何か]は主にgoogle chrome向け
;変換再定義(これがないと変換が機能しない)
vk1Csc079::
send, {vk1Csc079}
return

;変換 + A: Ctrl + PageUp (タブ左移動)
vk1Csc079 & A::
send ^{PgUp}
return

;変換 + D: Ctrl + PageDown (タブ右移動)
vk1Csc079 & D::
send ^{PgDn}
return

;変換 + W: Ctrl + W
vk1Csc079 & W::
send ^{w}
return

;変換 + S: Ctrl + S
vk1Csc079 & S::
send ^{s}
return

;変換 + T: Ctrl + T
vk1Csc079 & T::
send ^{t}
return

;変換 + Q: Alt + ←
vk1Csc079 & Q::
send !{Left}
return

;変換 + E: Alt + →
vk1Csc079 & E::
send !{Right}
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

RunJS(Source){
	send ^{l}
	;chromeの仕様でclipboard経由でjavascript:とはかけない。
	InsertText("javascript")
	InsertText(": " . Source)
	send {Enter}
}

;変換 + C: Webのタイトル取得
vk1Csc079 & C::
	;"→""に変換(エスケープ文字 http://ahkwiki.net/-EscapeChar より)
	RunJS("(function(text){ var ta = document.createElement(""textarea""); ta.value = text; document.body.appendChild(ta); ta.select(); document.execCommand(""copy""); ta.parentElement.removeChild(ta); })(document.title)")

return

;変換 + V : [Title](URL) (markdown用)
vk1Csc079 & V::
send ^{l}
	;"→""に変換(エスケープ文字 http://ahkwiki.net/-EscapeChar より)
	RunJS("(function(text){ var ta = document.createElement(""textarea""); ta.value = text; document.body.appendChild(ta); ta.select(); document.execCommand(""copy""); ta.parentElement.removeChild(ta); })(""["" + document.title + ""]"" + ""("" + document.URL +"")"")")
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

;変換 + IJL: 仮想デスクトップの移動
vk1Csc079 & I::
send #{Tab}
return

vk1Csc079 & J::
send #^{Left}
return

vk1Csc079 & L::
send #^{Right}
return

; カタカナひらがなキーを変換に割り当て(ミス対処)
;http://did2.blog64.fc2.com/blog-entry-374.html
; このPCだと、vkF2sc070(キーリスト記載)ではなく、vkF0sc070がカタカナひらがなキーになっている。
vkF0sc070::vk1Csc079
return

; joy-con
Joy15::
	send {LButton} ; 左クリック
return
Joy16::
	send {RButton} ; 右クリック
return
Joy1::
	send ^{PgUp} ; タブ左移動
return
Joy3::
	send ^{PgDn} ; タブ右移動
return

Joy6::
	send ^{w}
return

Joy4::
	send #^{Right} ; 仮想ウインドウ右移動
return
Joy2::
	send #^{Left} ; 仮想ウインドウ左移動
return

F13:: ;スティック→
	send {WheelRight} ;
return

F14:: ;スティック↓
	if GetKeyState("Joy5", "P")
		send ^{End}
	else 
		send {WheelDown}
return

F15:: ;スティック←
	send {WheelLeft} ;
return

F16:: ;スティック↑	
	if GetKeyState("Joy5", "P")
		send ^{Home}
	else 
		send {WheelUp}
return

; autohotkeyの再読み込み (変換 + F5)
vk1Csc079 & F5::
send ^s
Reload
return

Joy9::
send ^s
Reload
return

; ninja2 画像生成用
; 変換 + F12
vk1Csc079 & F12::
	Loop, 41{
		send !{f}
		Sleep, 100
		send {i}
		Sleep, 100
		send {Enter}
		Sleep, 100
		send ^{Tab}
		Sleep, 100
	}
return
