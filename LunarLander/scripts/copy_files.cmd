setlocal
set cmd_Configuration=%1
set cmd_OutDir=%2

goto %cmd_Configuration%

:Debug
echo %cmd_Configuration% %cmd_OutDir%
echo xcopy /d /f /h /i /r /v /y "..\..\_vcpkg\%cmd_Configuration%\bin\freeglutd.*" "%cmd_OutDir%"
xcopy /d /f /h /i /r /v /y "..\..\_vcpkg\%cmd_Configuration%\bin\freeglutd.*" "%cmd_OutDir%"

goto end

:Release
echo %cmd_Configuration% %cmd_OutDir%
echo xcopy /d /f /h /i /r /v /y "..\..\_vcpkg\%cmd_Configuration%\bin\freeglut.*" "%cmd_OutDir%"
xcopy /d /f /h /i /r /v /y "..\..\_vcpkg\%cmd_Configuration%\bin\freeglut.*" "%cmd_OutDir%"

:end
endlocal