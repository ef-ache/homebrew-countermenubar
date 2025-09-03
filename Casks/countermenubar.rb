cask "countermenubar" do
  version "1.1.1"
  sha256 "6b8e0c87e22d8178db23a91dac8f20135db1ca853543d790d46de4eb6eade8c6"

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
