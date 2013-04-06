[Setup]
AppName=Pong (pygame)
AppVersion=1.0
AppUpdatesURL=http://christgames.org
DefaultDirName={pf}\ChristGames\Pong-pygame
DefaultGroupName=ChristGames
OutputBaseFilename=setup
Compression=lzma2
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "pong.py"; DestDir: "{app}"
Source: "blip.ogg"; DestDir: "{app}"
Source: "cglogo02.png"; DestDir: "{app}"
Source: "python-3.2.3.msi"; DestDir: "{tmp}"
Source: "pygame-1.9.2a0.win32-py3.2.msi"; DestDir: "{tmp}"

[Run]
Filename: "msiexec.exe"; Parameters: "/i ""{tmp}\python-3.2.3.msi"" /qn /l*v install.log TARGETDIR=C:\Python32"
Filename: "msiexec.exe"; Parameters: "/i ""{tmp}\pygame-1.9.2a0.win32-py3.2.msi"" /qn /l*v install.log TARGETDIR=C:\Python32"

[Icons]
Name: "{group}\Pong (pygame)"; Filename: "{app}\pong.py"
Name: "{group}\{cm:UninstallProgram,Pong (pygame)}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Pong (pygame)"; Filename: "{app}\pong.py"; Tasks: desktopicon
