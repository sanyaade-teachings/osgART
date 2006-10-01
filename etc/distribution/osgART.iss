; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "osgART"
#define MyAppVerName "ARToolKit for OpenSceneGraph"
#define MyAppPublisher "HIT Lab New Zealand"
#define MyAppURL "http://www.hitlabnz.org"
#define MyVersion "0.0.1"


[Setup]
UsePreviousAppDir=no
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
; Use the environment variable
DefaultDirName={reg:HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment,OSG_ROOT|{pf}}
DefaultGroupName={#MyAppName}
OutputDir=.innosetup
OutputBaseFilename={#MyAppName}-{#MyVersion}
Compression=lzma
;; Compression=zip
SolidCompression=yes
SourceDir=..\..
WizardImageFile=compiler:wizmodernimage-IS.bmp
WizardSmallImageFile=compiler:wizmodernsmallimage-IS.bmp
AppVersion={#MyVersion}
UninstallFilesDir={app}\uninst
;; LicenseFile=LICENSE.txt


[Languages]
Name: eng; MessagesFile: compiler:Default.isl

[Types]
Name: full; Description: Complete Installation; Languages: 
Name: compact; Description: Install only necessary items.
Name: custom; Description: Customized installation.; Flags: iscustom

[Components]
Name: library; Description: osgART Core; Types: full compact custom; Flags: fixed
Name: examples; Description: Examples; Types: full compact custom
Name: doc; Description: Documentation; Types: full compact custom
Name: plugins; Description: Plugins; Types: full compact custom
Name: plugins\artoolkit; Description: ARToolkit Video Capture; Types: full compact custom
Name: plugins\dsvl; Description: DirectShow Video Plugin; Types: custom
Name: plugins\ptgrey; Description: Point Grey Capture; Types: custom
Name: plugins\dummyimage; Description: ARToolkit Video Library; Types: full compact custom
Name: plugins\intranel; Description: Intranel Video Stream Capture; Types: custom

[Files]
;; License Files
;; Source: LICENSE.txt; Components: library; DestDir: {app}; Flags: ignoreversion
;; Source: COPYING.txt; Components: library; DestDir: {app}; Flags: ignoreversion

;; Wrapper Libraries
Source: bin\osgART.dll; Components: library; DestDir: {app}; Flags: ignoreversion

;; Examples --
Source: bin\Example.exe; Components: examples; DestDir: {app}\bin; Flags: ignoreversion

; Data directory for the example
Source: etc\data\*.dat; Components: examples; DestDir: {app}\bin\data; Flags: ignoreversion
Source: etc\data\patt.*; Components: examples; DestDir: {app}\bin\data; Flags: ignoreversion

;; Documentation
;; Source: src\*.i; Components: code; DestDir: {app}\src; Flags: recursesubdirs
Source: docs\doc\html\osgART.ch?; Components: doc; DestDir: {app}\docs

Components: plugins\artoolkit; Source: bin\osgart_artoolkit.dll; DestDir: {app}\bin
Components: plugins\artoolkit; Source: bin\libARvideo.dll; DestDir: {app}\bin
Components: plugins\artoolkit; Source: bin\DSVL.dll; DestDir: {app}\bin

Components: plugins\dsvl; Source: bin\osgart_dsvl2.dll; DestDir: {app}\bin
Components: plugins\dsvl; Source: bin\DSVL2.dll; DestDir: {app}\bin

Components: plugins\ptgrey; Source: bin\osgart_ptgrey.dll; DestDir: {app}\bin

Components: plugins\dummyimage; Source: bin\osgart_dummyimage.dll; DestDir: {app}\bin

Components: plugins\intranel; Source: bin\osgart_intranel.dll; DestDir: {app}\bin

[Icons]
Name: {group}\Uninstall {#MyAppName}; Filename: {app}\{#MyAppName}{uninstallexe}
Name: {group}\API Reference; Filename: {app}\doc\osgART.chm; Components: doc

;; Examples
;; Name: {group}\Examples\Viewer\Run; Filename: {app}\examples\python\viewer.py; Parameters: ; WorkingDir: {app}\examples\python; Components: examples
;; Name: {group}\Examples\Viewer\Edit; Filename: {win}\notepad.exe; Components: examples; Parameters: {app}\examples\python\viewer.py; WorkingDir: {app}\examples\python
