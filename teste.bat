@ECHO OFF
SET SvcName=FontCache

:scxth0081cld
SC QUERYEX "%SvcName%" | FIND "STATE" | FIND /v "RUNNING" > NUL && (
	ECHO %SvcName% ja esta parado no servidor scxth0081cld 
	goto scxth0082cld
)
sc \\scxth0081cld stop %SvcName%

:scxth0082cld
SC QUERYEX "%SvcName%" | FIND "STATE" | FIND /v "RUNNING" > NUL && (
	ECHO %SvcName% ja esta parado no servidor scxth0082cld
	goto scxth0083cld
)
sc \\scxth0082cld stop %SvcName%

:scxth0083cld
SC QUERYEX "%SvcName%" | FIND "STATE" | FIND /v "RUNNING" > NUL && (
	ECHO %SvcName% ja esta parado no servidor scxth0083cld
	goto fim
)
sc \\scxth0083cld stop %SvcName%

:fim

pause