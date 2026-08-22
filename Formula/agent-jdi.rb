class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0d6d34d4bc9351f98bc19243733671b2e11651e699b0c746545c8489ae5b30aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c9a6994b793a1cd86c457515ddfc91e486be4f5f4ff0320dc013f24174b9f137"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b67a456f9618435b3df6eeaf2aa9f09d5c4a8de0726111b8a1ee16b0e842c2e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "361b23cc7d7abbec6f1d0e200eb66c428405ec59f587f93cb114f733bd8c5aac"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
