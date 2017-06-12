_ok = createDialog "EAT_first";
//_ok = createDialog "login";
waitUntil { !dialog }; // hit ESC to close IT
hint "Dialog closed.";