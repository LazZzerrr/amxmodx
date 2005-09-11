unit UnitLanguages;

interface

uses SysUtils, IniFiles;

var lInvalidFile: String;
    lWarnHighlighterReset: String;
    lHighlighterResetDone: String;
    lModified: String;
    lLnCh: String;
    lCloseModify: String;
    lSelectOutputPawn: String;
    lSelectOutputCPP: String;
    lDynamic: String;
    lOutputHint: String;
    lAddCodeSnippetCaption: String;
    lAddCodeSnippetPrompt: String;
    lEmptyCodeSnippetTitle: String;
    lCodeSnippetExists: String;
    lEnterSearchText: String;
    lPrintSelection: String;
    lNoFilesToSave: String;
    lSaveAllCaption1: String;
    lSaveAllCaption2: String;
    lCloseAllCaption1: String;
    lCloseAllCaption2: String;
    lNoMIRCWindowOpen: String;
    lSelectChannel: String;
    lSelectChannelPrompt: String;
    lWarnBigPluginPaste: String;
    lConnect: String;
    lConnecting: String;
    lDisconnect: String;
    lLoginIncorrect: String;
    lHostNotFound: String;
    lConnectionRefused: String;
    lWrongPort: String;
    lScanning: String;
    lFillInEachField: String;
    lPastingCodeEscStop: String;
    lInvalidDirectory: String;
    lFailedLoadNotes: String;
    lPawnCompilerNotFound: String;
    lError: String;
    lWarning: String;
    lOnLine: String;
    lOther: String;
    lStartingHalfLife: String;
    lHLNotFound: String;
    lCheckSettingsTryAgain: String;
    lUploadingFile: String;
    lErrorUpload: String;
    lChangingDir: String;
    lDone: String;
    lUploadFailed: String;
    lNoUntitledRegister: String;
    lAlreadyRegistered: String;
    lSuccessfulRegistered: String;
    lFailedUpdatePluginsIni: String;
    lInternetExplorerRequired: String;
    lUseMOTDAgain: String;
    lName: String;
    lType: String;
    lValue: String;
    lVariable: String;
    lAddItemCaption: String;
    lAddItemPrompt: String;
    lEnterTitle: String;
    lAddItems: String;
    lInvalidPlugin: String;
    lPlayersAlreadyAdded: String;
    lFailedLoadCache: String;
    lAlreadyUnLoaded: String;
    lAlreadyLoaded: String;
    lSelectAMXXCaption: String;
    lPluginError: String;
    lSaveCaption: String;
    lCloseCaption: String;
    lNoCPP: String;
    lInvalidChannel: String;
    lResetShortcuts: String;

procedure ResetToEnglish;

implementation

procedure ResetToEnglish;
begin
  // Messages
  lInvalidFile := 'The file couldn''t be found. Check the path and try again.';
  lWarnHighlighterReset := 'Warning: All settings concerning the editor will be reset to default. Continue?';
  lHighlighterResetDone := 'Reset successful. Restart AMXX-Studio and the changes will take affect.';
  lModified := 'Modified';
  lLnCh := 'Ln %u Ch %u';
  lCloseModify := 'The file "%s" has been modified. Save it before closing?';
  lSelectOutputPawn := 'Please select the default output folder for compiled Pawn Plug-Ins:';
  lSelectOutputCPP := 'Please select the default output folder for compiled C++ libraries:';
  lDynamic := 'Dynamic';
  lOutputHint := 'The output will be copied to the source''s directory.';
  lAddCodeSnippetCaption := 'Add Code-Snippet';
  lAddCodeSnippetPrompt := 'Please enter the title of the new Code-Snippet:';
  lEmptyCodeSnippetTitle := 'You have to enter a title before adding a new Code-Snippet!';
  lCodeSnippetExists := 'The entered Code-Snippet is already added. Please select another title.';
  lEnterSearchText := 'You forgot to enter the text you want to search.';
  lPrintSelection := 'Print only selection?';
  lNoFilesToSave := 'There are no modified files to save!';
  lSaveAllCaption1 := 'Save all files';
  lSaveAllCaption2 := 'Please select all files you want to save:';
  lCloseAllCaption1 := 'Close all files';
  lCloseAllCaption2 := 'Please select all files you want to close:';
  lNoMIRCWindowOpen := 'You have to open mIRC first to use IRC Paster!';
  lSelectChannel := 'Select channel';
  lSelectChannelPrompt := 'Please enter the channel the code shall be sent to:';
  lWarnBigPluginPaste := 'Warning: This plugin is quite large for pasting it to the IRC network, maybe you should paste it on pastebin.com instead. Otherwise it MAY result in a ban, are you sure to continue?'; 
  lConnect := 'Connect';
  lConnecting := 'Connecting...';
  lDisconnect := 'Disconnect';
  lLoginIncorrect := 'Login incorrect. Check your FTP settings and try again.';
  lHostNotFound := 'The entered host couldn''t be found. Check your settings and try again.';
  lConnectionRefused := 'The host refused the connection. Check your port and try again.';
  lWrongPort := 'The port you entered is definitely wrong. Check it and try again.';
  lScanning := 'Scanning...';
  lFillInEachField := 'Please fill in each field!';
  lPastingCodeEscStop := 'Pasting Code, press Esc to stop...';
  lInvalidDirectory := 'Could not change FTP directory. Update it and try again.';
  lFailedLoadNotes := 'Failed to load the notes!';
  lPawnCompilerNotFound := 'Pawn compiler not found. Please check your settings and try again.';
  lError := 'Error: %s on line %u';
  lWarning := 'Warning: %s on line %u';
  lOther := '%s on line %u';
  lStartingHalfLife := 'Starting Half-Life...';
  lHLNotFound := 'Could not find the set Half-Life executable.';
  lCheckSettingsTryAgain := 'Check your settings and try again.';
  lUploadingFile := 'Done, uploading file...';
  lErrorUpload := 'Failed to upload the plugin:';
  lChangingDir := 'Connected, changing directory...';
  lDone := 'Done.';
  lUploadFailed := 'Upload failed!';
  lNoUntitledRegister := 'You cannot register an untitled document';
  lAlreadyRegistered := 'This plugin is already registered!';
  lSuccessfulRegistered := 'The plugin has been registered successfully!';
  lFailedUpdatePluginsIni := 'Failed to update plugins.ini!';
  lInternetExplorerRequired := 'Microsoft Internet Explorer 6.0 is required to use this function.';
  lUseMOTDAgain := 'When you''ve finished, use this function again to convert the HTML code to a Pawn string.';
  lName := 'Name';
  lType := 'Type';
  lValue := 'Value';
  lVariable := 'Variable';
  lAddItemCaption := 'Add menu item';
  lAddItemPrompt := 'Please enter the menu item you want to add:';
  lEnterTitle := 'You forgot to enter a title!';
  lAddItems := 'You forgot to add the menu items!';
  lInvalidPlugin := 'Couldn''t find the register_plugin()-event. Add it and try again.';
  lPlayersAlreadyAdded := 'PLAYERS item is already added!';
  lFailedLoadCache := 'Failed to load file cache!';
  lAlreadyUnLoaded := 'Plugin is already unloaded!';
  lAlreadyLoaded := 'Plugin is already loaded!';
  lSelectAMXXCaption := 'Please select the AMX Mod X directory on your listen server:';
  lPluginError := 'A plugin raised this error:';
  lSaveCaption := 'Save';
  lCloseCaption := 'Close';
  lNoCPP := 'Sorry, the C++ IDE is not enabled.';
  lInvalidChannel := 'Invalid channel.';
  lResetShortcuts := 'Warning: The shortcut reset would immediately take affect. Reset anyway?';
end;

end.