#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Login para entrar antigo
oldLogin()
{
	WinActivate, REDE MULTIDROGAS | SIM - login
	If(WinExist("REDE MULTIDROGAS | SIM - login"))
	{
		ControlFocus, TEdit2, REDE MULTIDROGAS | SIM - login
		CtrlA()
		Send, balcao{Enter}b{Enter 2}
		return
	}
	return
}
return

;Login para entrar novo
newLogin(codigoLoja)
{
	WinActivate, REDE MULTIDROGAS | SIM - login
	If(WinExist("REDE MULTIDROGAS | SIM - login"))
	{
		ControlFocus, TEdit3, REDE MULTIDROGAS | SIM - login
		CtrlA()
		Send, %codigoLoja%{Enter
		oldLogin()
		return
	}
	return
}
return

;Login para autenticar


;Prepara venda para o vendedor
colocaVendedor(vendedor)
{
	if(WinExist("VENDAS - BALCÃO"))
	{
		ControlFocus, TEdit18, VENDAS - BALCÃO
		Send, {Backspace 3}%vendedor%{Enter 3}
		return
	}
	return
}
return

;Send um Control+A para selecionar tudo
CtrlA()
{
	Send, {CtrlDown}a{CtrlUp}
	return
}
return