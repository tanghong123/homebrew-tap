cask "kwire" do
  version "2.6.0"
  sha256 "c18116bade85843104738df5a7d016f380bbc7cf97fba67492ff39b6a15bb4a7"

  url "https://github.com/tanghong123/kwire/releases/download/v#{version}/Kwire_universal.app.tar.gz"
  name "Kwire"
  desc "Desktop app for downloading reading lists from Library Genesis"
  homepage "https://github.com/tanghong123/kwire"

  depends_on macos: :big_sur

  app "Kwire.app"

  zap trash: [
    "~/Library/Application Support/Kwire",
    "~/Library/Application Support/kwire-tui",
  ]
end
