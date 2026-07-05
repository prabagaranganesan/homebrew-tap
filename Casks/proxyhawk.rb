cask "proxyhawk" do
  version :latest
  sha256 :no_check

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
