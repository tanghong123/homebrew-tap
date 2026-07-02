cask "kwire" do
  version "2.4.4"
  sha256 "8db89769136fe9265fd8f4e6606e823e615173f4f08d6d4eaaaa431c8412461a"

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
