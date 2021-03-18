@echo off


:: CONFIG: Nano payout address
set payout_address="nano_1tyd79peyzk4bs5ok1enb633dqsrxou91k7y4zzo1oegw4s75bokmj1pey4s"

:: CONFIG: Desired work type, options are "ondemand", "precache", "any" (default)
set desired_work_type="any"

:: CONFIG: GPU hardware identifier (set in the .vbs file if you plan on running the background version)
set gpu_id="0:0"

:: CONFIG: Optional delay before starting a DPoW client
set start_delay_seconds=3




IF %payout_address% == "nano_1tyd79peyzk4bs5ok1enb633dqsrxou91k7y4zzo1oegw4s75bokmj1pey4s" (
	echo [41mCAUTION: Payout address is not configured.[0m
	timeout 10
)

IF NOT "%1" == "-noserver" (
	set gpu_id=%gpu_id:"=%
	echo Starting PoW Service minimized...
	start /min "PoW Service" cmd /c ".\bin\windows\nano-work-server.exe --gpu %gpu_id% -l 127.0.0.1:7000 && pause"
	echo PoW Service started.
)

timeout %start_delay_seconds%

echo.
echo Starting DPoW Client...
py -3 dpow_client.py --payout %payout_address% --work %desired_work_type%

pause
