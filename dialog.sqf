_ok = createDialog "EAT";
//_ok = createDialog "login";
waitUntil { !dialog }; // hit ESC to close IT
hint "Dialog closed.";