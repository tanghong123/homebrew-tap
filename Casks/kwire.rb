cask "kwire" do
  version "2.4.5"
  sha256 "373d9153fc7a7d2d25cf44ea1001d291fbd090788ab9a18a010f4fe0e2856bc2"

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
