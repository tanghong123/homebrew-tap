class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.273.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7fe6de948b359180b8bfe8d95e7edcac1aed27021d66597a87a6b9873c05aa7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9310d278252e542e5b18fbfc4d624f9fb0e554daf7cc034df7ca1fd043bb914f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3971ee57c02d7b77a496052501f9f57026b4444e3d841e15a560f05cbb523489"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20200644e3857de31a634a63dba99ee1e3a05e775341bd6d419ae1abb0e7d6af"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
