@ECHO OFF
:ass
cls
setlocal enabledelayedexpansion

set count=0

for /f "tokens=*" %%x in (clientsettings.txt) do (
    set var[!count!]=%%x
	set /a count+=1
)

SET NICKNAME=%var[0]%
SET UUID=%var[1]%
SET RAM=%var[2]%
SET JAVAPATH=%var[3]%
SET JVMARGS=%var[4]%
SET LIBRARIES=%var[5]%

%JAVAPATH% %JVMARGS% -Xmx%RAM% -cp "%LIBRARIES%" -Xss2M net.minecraft.launchwrapper.Launch --username %NICKNAME% --version ForgeOptiFine 1.12.2 --gameDir ./ --assetsDir assets --assetIndex 1.12 --uuid %UUID% --accessToken 53315991293c377ba07c5919f938e19d --userType legacy --tweakClass net.minecraftforge.fml.common.launcher.FMLTweaker --versionType Forge --width 925 --height 530 --modListFile tempModList-1698564906369
pause
goto ass