cask "kwire" do
  version "2.4.0"
  sha256 "f5fb5fcfb7cee10a80b5f6ab0325ce808e861f03587212506c6d51df22d2a3d0"

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
