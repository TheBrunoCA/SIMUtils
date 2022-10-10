#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Menu com os tipos de pagamento

tppMenu()
{	
	Menu,Menu,Add,DINHEIRO,tpp
	Menu,Menu,Add,DEBITO,tpp
	Menu,Menu,Add,CREDITO,tpp
	Menu,Menu,Add,PIX,tpp
	Menu,Menu,Show
	return
}
return

tpp(Item,Index,Menu){
	if(Item == "DINHEIRO")
	{
		Send, 1{Enter}
	}
	if(Item == "DEBITO")
	{
		Send, 150{Enter}
	}
	if(Item == "CREDITO")
	{
		Send, 149{Enter}
	}
	if(Item == "PIX")
	{
		Send, 61{Enter}
	}
	return
}
return
