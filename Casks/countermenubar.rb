cask "countermenubar" do
  version "1.1.2"
  sha256 "f5385dbd7f21582a0f2006a607568f2e1224836e5f749dc91f1d9b16a7e305bb"

  url "https://github.com/ef-ache/CounterMenuBar/releases/download/v#{version}/CounterMenuBar-#{version}.dmg"
  name "CounterMenuBar"
  desc "Simple menu bar counter app with email generation"
  homepage "https://github.com/ef-ache/CounterMenuBar"

  auto_updates false
  depends_on macos: ">= :big_sur" # Adjust based on your minimum macOS version

  app "CounterMenuBar.app"

  uninstall quit: "com.yourname.CounterMenuBar" # Replace with your bundle ID

  zap trash: [
    "~/Library/Preferences/com.yourname.CounterMenuBar.plist",
    "~/Library/Application Support/CounterMenuBar",
  ]

  caveats <<~EOS
    On first launch, macOS may show a security warning.
    To open the app:
    1. Right-click CounterMenuBar in Applications
    2. Select "Open" from the menu
    3. Click "Open" in the dialog
    
    Or run: xattr -cr /Applications/CounterMenuBar.app
  EOS
end
