cask "orbit" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/jeanmenezesmagalhaes/homebrew-orbit/releases/download/v#{version}/Orbit-#{version}.zip"
  name "Orbit"
  desc "E-mail, calendário e assistente de IA num app nativo para Mac"
  homepage "https://github.com/jeanmenezesmagalhaes/homebrew-orbit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Orbit.app"

  zap trash: [
    "~/Library/Application Support/Orbit",
    "~/Library/Preferences/app.orbit.mac.plist",
    "~/Library/Saved Application State/app.orbit.mac.savedState",
  ]
end
