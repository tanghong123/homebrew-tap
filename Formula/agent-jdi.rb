class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.85.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d23d9e61b9f97d4a56dfc7dac686daacfa2aebcc9c3ea1cc04e444d5741937fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2374f9625171eb0870795299f64ce429896905edc1b60194265b1b432e8f2136"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22854937a0190527ce7f8b97b8027b1fe7c3d57f224b5ec983d153a5faeb090a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b5eac879ecf4b9a25e2a60ff7eba89ddbbfde48f48bbcb1ec36f82a94fdde0e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
