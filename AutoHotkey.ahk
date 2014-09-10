; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.
; one .ahk file simultaneously and each will get its own tray icon.

;;;;;;;;;;;;;;;;;;;
;;Global Settings;;
;;;;;;;;;;;;;;;;;;;

;Set window title match mode to winTitle.contains(searchStr)
SetTitleMatchMode, 2

;Force script to reload rather than rerun
#SingleInstance force

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Ctrl-Shift-W modifier. Launch Windows applications;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+W::                ;;Ctrl-Shift-W
    Input, x, L1    ;;Take 1-char input, assign to x


    if x = a            ;;AutoHotkey (Ctrl-Shift-W, a)
    {
        IfWinExist AutoHotkey ahk_class AutoHotkey
            WinActivate
        else
            ;;If AHK is not running, we can't interpret this file!
            Run %A_ProgramFiles%\AutoHotkey\AutoHotkey.exe
    }
    else if x = c
    {
        IfWinExist ahk_class VirtualConsoleClass
            WinActivate
        else
            Run ConEmu64.exe
    }
    else if x = e        ;;Eclipse, bottom-most (Ctrl-Shift-W, n)
    {   
        IfWinExist Eclipse ahk_class SWT_Window0
            WinActivateBottom Eclipse
        else
            Run C:\eclipse-indigo\eclipse.exe
       
    }
    else if x = f
    {
        IfWinExist Mozilla Firefox ahk_class MozillaWindowClass
            WinActivate
        else
            Run %A_ProgramFiles%\Mozilla Firefox\firefox.exe
    }
;;    else if x = l        ;;Lotus Notes, (Ctrl-Shift-W, l)
;;    {
;;        IfWinExist Lotus Notes ahk_class SWT_Window0
;;            WinActivate
;;        else
;;            Run C:\Lotus\Notes\nlnotes.exe
;;    }
    else if x = n        ;;Notepad++ (Ctrl-Shift-W, n)
    {
        IfWinExist Notepad++ ahk_class Notepad++
            WinActivate
        else
            Run %A_ProgramFiles%\Notepad++\notepad++.exe
    }
;;    else if x = o        ;;Test command
;;    {
;;        WinGetTitle, outVar, A
;;        Msgbox, %outVar%
;;    }
;;    else if x = p        ;;PAS4000 (Ctrl-Shift-W, p)
;;    {
;;        IfWinExist PAS4000 ahk_class SWT_Window0
;;            WinActivate
;;        else
;;            Run %A_ProgramFiles%\Pilz\PAS4000 1.7.0\PAS4000.exe
;;    }
;;    else if x = q
;;    {
;;        IfWinExist HP Quality Center 9.2 ahk_class TMainForm
;;            WinActivate
;;        else
;;            Run %A_ProgramFiles%\Common Files\HP\QCExplorer\QCExplorer.exe
;;
;;    }
    else if x = r        ;;Launch cmd prompt (Ctrl-Shift-W, r)
    {
        Run %comspec%       
    }
;;    else if x = t        ;;Launch TeamViewer (Ctrl-Shift-W, t)
;;    {
;;        IfWinExist TeamViewer ahk_class #32770    ;;Arbitrary WIN_CLASS name?
;;            WinActivate
;;        else
;;            Run %A_ProgramFiles%\TeamViewer\Version7\TeamViewer.exe
;;
;;    }
;;    else if x = v        ;;Launch UltraVnc (Ctrl-Shift-W, v)
;;    {
;;        ;Window title dependant on connected machine
;;        IfWinExist ahk_class VNCMDI_Window
;;            WinActivateBottom ahk_class VNCMDI_Window
;;        else
;;            Run %A_ProgramFiles%\uvnc bvba\UltraVnc\vncviewer.exe
;;    }
;;    else if x = w        ;;Launch Winamp (Ctrl-Shift-W, w)
;;    {
;;        IfWinExist Winamp ahk_class  BaseWindow_RootWnd
;;            WinActivate
;;        else
;;            Run %A_ProgramFiles%\Winamp\winamp.exe
;;    }
;;    else if x = x        ;;xplorer (Ctrl-Shift-W, x)
;;    {
;;        IfWinExist xplorer ahk_class ATL:ExplorerFrame
;;            WinActivate
;;        else
;;            Run %A_ProgramFiles%\xplorer2\xplorer2_lite.exe
;;    }


/*
    ;Template. Replace CHAR, WIN_TITLE, WIN_CLASS, PATH
    else if x = CHAR
    {
        IfWinExist WIN_TITLE ahk_class WIN_CLASS
            WinActivate
        else
            Run %A_ProgramFiles%\PATH
    }
*/

return

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys