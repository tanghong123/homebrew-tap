cask "kwire" do
  version "2.4.7"
  sha256 "9c2a9fcee195df7e2647b1758f2e52c558451f9ad50a4d833e9972771f0d9a7f"

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
