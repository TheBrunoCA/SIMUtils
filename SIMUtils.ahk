#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include <tbca_utils>
#Include <tbca_menus>

:*:test::
{
	tppmenu()
}
return

#IfWinActive, REDE MULTIDROGAS | SIM - login
{
	;Faz login em qualqeur selecionado, erro se nenhum selecionado
	:*:bb::
	{
		oldLogin()
		return
	}
	;Faz login na Bom jesus
	:*:bj::
	{
		newLogin("248")
		return
	}
	;Faz login na São Sebastião
	:*:ss::
	{
		newLogin("638")
		return
	}
}
return

#IfWinActive, VENDAS - BALCÃO
{
	
	focusedControl := ControlGetFocus
	if(focusedControl == "TEdit18")
	{
		;Coloca o Bruno como vendedor
		:*:30::
		{
			colocaVendedor("30")
			return
		}
	}
	^F8::
	{
		Send, {F8}
		vendedor := 0
		ControlGetText, vendedor, TEdit18, VENDAS - BALCÃO
		if(vendedor != "30")
		{
			return
		}
		MsgBox, , %vendedor%
		return
	}
}