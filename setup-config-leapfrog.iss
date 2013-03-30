; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Repetier-Host Leapfrog"
#define MyAppVersion "0.84"
#define MyAppPublisher "repetier"
#define MyAppURL "http://www.lpfrg.com"
#define MyAppExeName "RepetierHost.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1146F759-924B-4ECB-8744-46CCB622F699}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\Repetier-Host-Leapfrog
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=Repetier-Host-licence.txt
OutputDir=installer/leapfrog
OutputBaseFilename=setupRepetierHostLeapfrog_0_84
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "basque"; MessagesFile: "compiler:Languages\Basque.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Dirs]
Name: "{localappdata}\RepetierHostLeapfrog"

[Files]
Source: "src\RepetierHost\bin\Release\RepetierHost.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.Compatibility.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.Compatibility.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.GLControl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.GLControl.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\data\*"; DestDir: "{app}/data"; Flags: ignoreversion recursesubdirs
;Source: "src\Slic3r\*"; DestDir: "{app}/Slic3r"; Flags: onlyifdoesntexist recursesubdirs
Source: "win\32bit\Slic3r\*"; DestDir: "{app}/Slic3r"; Flags: ignoreversion recursesubdirs; Check: not Is64BitInstallMode
Source: "win\64bit\Slic3r\*"; DestDir: "{app}/Slic3r"; Flags: ignoreversion recursesubdirs; Check: Is64BitInstallMode
;Source: "win\pypy\*"; DestDir: "{app}/pypy"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "win\python\*"; DestDir: "{app}/python"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "win\Skeinforge\*"; DestDir: "{app}/Skeinforge"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "src\empty.txt"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
;Source: "iRapid\Arduino MEGA 2560 REV3.inf"; DestDir: "{app}\driver"; Flags: ignoreversion
Source: "installer\leapfrog\leapfroglogo32.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer\leapfrog\frog.gcode"; DestDir: "{app}\data\examples"; Flags: ignoreversion
Source: "installer\leapfrog\splashscreen.png"; DestDir: "{app}\data"; Flags: ignoreversion
Source: "installer\leapfrog\custom.ini"; DestDir: "{app}\data"; Flags: ignoreversion
Source: "installer\leapfrog\Slic3r\*"; DestDir: "{userappdata}\Slic3r"; Flags: onlyifdoesntexist recursesubdirs createallsubdirs
;Source: "iRapid\Skeinforge\*"; DestDir: "{%USERPROFILE}\.skeinforge"; Flags: onlyifdoesntexist recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCU; Subkey:"Software\repetierLeapfrog"; ValueType:string; ValueName:"workdir";ValueData: "{localappdata}\RepetierHostLeapfrog";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog"; ValueType:string; ValueName:"SkeinforgeWorkdir";ValueData: "{localappdata}\RepetierHostLeapfrog";Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog"; ValueType:string; ValueName:"SkeinforgePython";ValueData: "{app}\python\pythonw.exe"; Check:setPython
;Root: HKCU; Subkey:"Software\repetierLeapfrog"; ValueType:string; ValueName:"SkeinforgePypy";ValueData: "{app}\pypy\pypy.exe";Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog"; ValueType:string; ValueName:"SkeinforgePath";ValueData: "{app}\Skeinforge\skeinforge_application\skeinforge.py";Check:setSkeinforge;
;Root: HKCU; Subkey:"Software\repetierLeapfrog"; ValueType:string; ValueName:"SkeinforgeCraftPath";ValueData: "{app}\Skeinforge\skeinforge_application\skeinforge_utilities\skeinforge_craft.py"; Check:setSkeinforgeCraft;
Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"skeinforgeProfileDir";ValueData: "{%USERPROFILE}\.skeinforge\profiles";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"printerBaseColor";ValueData: "0xff96d314";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"facesColor";ValueData: "0xffff0000";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"edgesColor";ValueData: "0xffc0c0c0";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"selectedFacesColor";ValueData: "0xff804000";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"outsidePrintbedColor";ValueData: "0xff7fffd4";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"selectionBoxColor";ValueData: "0xff1e80ff";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"enableLight1";ValueData: "0";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"enableLight2";ValueData: "0";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"enableLight3";ValueData: "1";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\3D"; ValueType:dword; ValueName:"enableLight4";ValueData: "0";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rPrintSettings";ValueData: "High Quality - No Support";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rPrinterSettings";ValueData: "Creatr Single Extruder";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rFilamentSettings";ValueData: "PLA Black";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rFilament2Settings";ValueData: "PLA Black";  Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rFilament3Settings";ValueData: "PLA Black";  Flags:createvalueifdoesntexist;

Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"port";ValueData: "Virtual printer";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"baud";ValueData: "115200";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"stopbits";ValueData: "00000001";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"parity";ValueData: "00000000";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"transferProtocol";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"pingPong";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"checkTemp";ValueData: "1";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"travelFeedrate";ValueData: "3000";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"zAxisFeedrate";ValueData: "100";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"checkTempInterval";ValueData: "3";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"disposeX";ValueData: "130";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"disposeY";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"disposeZ";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"goDisposeAfterJob";ValueData: "1";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"disableHeatedBetAfterJob";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"disableExtruderAfterJob";ValueData: "1";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"disableMotorsAfterJob";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"hasDumpArea";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"runFilterEverySlice";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"logM105";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"xhomeMax";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"yhomeMax";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"numExtruder";ValueData: "1";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:dword; ValueName:"printerType";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"receiveCacheSize";ValueData: "63";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"printAreaWidth";ValueData: "230";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"printAreaDepth";ValueData: "270";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"printAreaHeight";ValueData: "200";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"dumpAreaLeft";ValueData: "125";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"dumpAreaFront";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"dumpAreaWidth";ValueData: "22";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"dumpAreaDepth";ValueData: "40";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"defaultExtruderTemp";ValueData: "210";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"defaultHeatedBedTemp";ValueData: "90";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"filterPath";ValueData: "yourFilter #in #out";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"addPrintingTime";ValueData: "8";Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"gcodePrepend";ValueData: {code:StartGCode};Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"gcodeAppend";ValueData:{code:EndGCode};Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"printerXMax";ValueData: "230";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"printerXMin";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"printerYMax";ValueData: "270";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr single extruder"; ValueType:string; ValueName:"printerYMin";ValueData: "0";Flags:createvalueifdoesntexist;

Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"port";ValueData: "Virtual printer";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"baud";ValueData: "115200";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"stopbits";ValueData: "00000001";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"parity";ValueData: "00000000";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"transferProtocol";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"pingPong";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"checkTemp";ValueData: "1";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"travelFeedrate";ValueData: "3000";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"zAxisFeedrate";ValueData: "100";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"checkTempInterval";ValueData: "3";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"disposeX";ValueData: "130";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"disposeY";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"disposeZ";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"goDisposeAfterJob";ValueData: "1";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"disableHeatedBetAfterJob";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"disableExtruderAfterJob";ValueData: "1";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"disableMotorsAfterJob";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"hasDumpArea";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"runFilterEverySlice";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"logM105";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"xhomeMax";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"yhomeMax";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"numExtruder";ValueData: "2";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:dword; ValueName:"printerType";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"receiveCacheSize";ValueData: "63";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"printAreaWidth";ValueData: "230";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"printAreaDepth";ValueData: "270";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"printAreaHeight";ValueData: "200";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"dumpAreaLeft";ValueData: "125";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"dumpAreaFront";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"dumpAreaWidth";ValueData: "22";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"dumpAreaDepth";ValueData: "40";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"defaultExtruderTemp";ValueData: "210";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"defaultHeatedBedTemp";ValueData: "90";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"filterPath";ValueData: "yourFilter #in #out";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"addPrintingTime";ValueData: "8";Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"gcodePrepend";ValueData: {code:StartGCode};Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"gcodeAppend";ValueData:{code:EndGCode};Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"printerXMax";ValueData: "230";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"printerXMin";ValueData: "0";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"printerYMax";ValueData: "270";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetierLeapfrog\printer\Creatr dual extruder"; ValueType:string; ValueName:"printerYMin";ValueData: "0";Flags:createvalueifdoesntexist;


Root: HKCU; Subkey:"Software\repetierLeapfrog"; ValueType:string; ValueName:"currentPrinter";ValueData: "Creatr single extruder";Flags:createvalueifdoesntexist;

;Root: HKCU; Subkey:"Software\repetierLeapfrog\slic3r"; ValueType:string; ValueName:"currentConfig";ValueData: "iRapid PLA";Flags:createvalueifdoesntexist;


;Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rFilamentSettings";ValueData: "PLA 1.8 mm";Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rPrinterSettings";ValueData: "Creatr";Flags:createvalueifdoesntexist;
;Root: HKCU; Subkey:"Software\repetierLeapfrog\window"; ValueType:string; ValueName:"slic3rPrintSettings";ValueData: "0.3 normal";Flags:createvalueifdoesntexist;



[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

[CustomMessages]
dotnetmissing=Repetier-Host needs Microsoft .Net 3.5 which is not yet installed. Do you like to download it now?
 
[Code]
function InitializeSetup(): Boolean;
var
  ErrorCode: Integer;
  isInstalled: Cardinal;
  netFrameWorkInstalled : Boolean;
begin
  result := true;
  
  // Check for the .Net 3.5 framework
  isInstalled := 0;
  netFrameworkInstalled := RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5', 'Install', isInstalled);
  if ((netFrameworkInstalled)  and (isInstalled <> 1)) then 
  begin
    if (MsgBox(ExpandConstant('{cm:dotnetmissing}'), mbConfirmation, MB_YESNO) = idYes) then
    begin
      ShellExec('open',
      'http://www.microsoft.com/en-us/download/details.aspx?id=22',
      //'http://www.microsoft.com/downloads/details.aspx?FamilyID=333325fd-ae52-4e35-b531-508d977d32a6&DisplayLang=en',
      '','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
    end;
    result := false;
  end;  
end;

function StartGCode(Param: String): string;
begin
  Result := 'G28 X0 Y0 Z0 ; Home'#13#10'G92 E0; Reset extrude rposition'#13#10'M140 S80; Set bed temperature'#13#10'M104 S185; Set extruder temperature'#13#10'M190 S65 ; wait for bed temperature to be reached'#13#10'M109 S185 ; wait for extruder temperature'#13#10'G1 Z0.25'#13#10'G1 X89 E14 F1000 ; Fill extruder with filament'#13#10'G1 E12 F1000 ; Retract'#13#10'G92 E0'#13#10;
end;
function EndGCode(Param: String): string;
begin
  Result := 'G92 E0'#13#10'G1 E-3 F1000'#13#10'G1 X50 Y100 F10000'#13#10'G1 Z120 F2000 ; Lift Z axis'#13#10;
end;
function BoolToStr(Val : Boolean): String;
begin
if val = True then
  result := 'True'// or 'Yes' or '1'
else
  result := 'False';// or 'No' or '0'
end;
function setPython(): Boolean;
var
  V: string;
begin
  Result := TRUE;
  if RegQueryStringValue(HKCU, 'Software\repetierLeapfrog', 'SkeinforgePython', V) then
    if(V<>'') then
      Result := FALSE;
 // MsgBox('python = '+BoolToStr(Result),mbConfirmation,MB_YESNO);
end;
function setSkeinforge(): Boolean;
var
  V: string;
begin
  Result := TRUE;
  if RegQueryStringValue(HKCU, 'Software\repetierLeapfrog', 'SkeinforgePath', V) then
    Result := V='';
end;
function setSkeinforgeCraft(): Boolean;
var
  V: string;
begin
  Result := TRUE;
  if RegQueryStringValue(HKCU, 'Software\repetierLeapfrog', 'SkeinforgeCraftPath', V) then
    Result := V='';
end;