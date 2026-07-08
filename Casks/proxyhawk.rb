cask "proxyhawk" do
  version "1.2.0"
  sha256 "1f4ab8a3049c84b80bd882afb8854b6fb63a77d40815ed52481f451f02cb8f02"

  url "https://proxyhawk.io/ProxyHawk.dmg"
  name "ProxyHawk"
  desc "HTTPS proxy debugger — pick a device and see only its traffic, decrypted locally"
  homepage "https://proxyhawk.io/"

  depends_on macos: :ventura

  app "ProxyHawk.app"

  zap trash: [
    "~/Library/Application Support/ProxyHawk",
    "~/Library/Caches/com.prabagaran.ProxyBuddyApp",
    "~/Library/HTTPStorages/com.prabagaran.ProxyBuddyApp",
    "~/Library/Preferences/com.prabagaran.ProxyBuddyApp.plist",
    "~/Library/Saved Application State/com.prabagaran.ProxyBuddyApp.savedState",
  ]

  caveats <<~EOS
    ProxyHawk configures the macOS system proxy while capturing and restores
    it on quit. On first launch, follow the in-app guide to install and trust
    the ProxyHawk CA certificate for HTTPS decryption.
  EOS
end
