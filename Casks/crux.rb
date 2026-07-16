cask "crux" do
  version "2.3"
  sha256 "48de9cabae9f197a055baf9a759500640e2e58c96219e938d36b9cf9b291fd75"

  # DMG is hosted on the PUBLIC tap repo's Releases (not the private
  # source repo). Private-repo release assets aren't publicly
  # downloadable, so the notarized binary + the cask both live here.
  url "https://github.com/tanghong123/homebrew-tap/releases/download/v#{version}/Crux-#{version}.dmg"
  name "Crux"
  desc "On-device meeting transcription & summarization"
  homepage "https://github.com/tanghong123/homebrew-tap"

  # Notarized Developer ID build; macOS 14 (Sonoma) is the deployment floor.
  depends_on macos: ">= :sonoma"

  app "Crux.app"

  # Crux keeps its library + models under Application Support; `brew
  # uninstall --cask crux --zap` removes them too. Ollama (installed
  # separately by the app) is intentionally NOT zapped here.
  zap trash: [
    "~/Library/Application Support/Crux",
    "~/Library/Preferences/app.crux.mac.plist",
    "~/Library/Saved Application State/app.crux.mac.savedState",
  ]
end
