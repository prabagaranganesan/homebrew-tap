cask "proxyhawk" do
  version "1.2.0"
  sha256 "b3ad9b5abb0e42b9c2ed76b128e3067043b31a49cd61eccaa3636b10ff7de276"

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
