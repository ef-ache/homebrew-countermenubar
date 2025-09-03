cask "countermenubar" do
  version "1.0.0"
  sha256 "d979cf5140b0f3b40a8bc0bd5fe36ca7b86ac03fa8e0bf3c7e129315d11de592"

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
end
