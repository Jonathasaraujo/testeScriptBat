@ECHO OFF
SET SvcName=teste

:server1
SC QUERYEX "%SvcName%" | FIND "STATE" | FIND /v "RUNNING" > NUL && (
	ECHO %SvcName% ja esta parado no servidor server1
	goto server2
)
sc \\server stop %SvcName%

:server2
SC QUERYEX "%SvcName%" | FIND "STATE" | FIND /v "RUNNING" > NUL && (
	ECHO %SvcName% ja esta parado no servidor server2
	goto server3
)ss
sc \\server2 stop %SvcName%

:server3
SC QUERYEX "%SvcName%" | FIND "STATE" | FIND /v "RUNNING" > NUL && (
	ECHO %SvcName% ja esta parado no servidor server3
	goto fim
)
sc \\server3 stop %SvcName%

:fim

pause
