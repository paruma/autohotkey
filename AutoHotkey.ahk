;Home, End関連
!Up::
	if GetKeyState("z", "P")
		send, !{Up}
	else
		send, ^{Home}
return

!+Up::
	if GetKeyState("z", "P")
	
send, ^+{Home}
return

!Down::
	if GetKeyState("z", "P")
		send, !{Down}
	else
		send, ^{End}
return

!+Down::
send, ^+{End}
return

!Left::
	if GetKeyState("z", "P")
		send, !{Left}
	else
		send, {Home}
return

!+Left::
send, +{Home}
return

!Right::
	if GetKeyState("z", "P")
		send, !{Right}
	else
		send, {End}
return

!+Right::
send, +{End}
return


;タップゾーン(コーナータップ。左上、右上)
Media_Prev::
	send, #^{Left}
return

Media_Next::
	send, #^{Right}
return

;Insert無効化
Insert::
return