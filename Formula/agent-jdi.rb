class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.10.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "98ca645107266458d050813ad0bd8b0b212f3c17b1923ff5a8f81ab722365d12"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "58ab8acdb248e3e28617068e12dd41c7e15c633ed7b7aba1e612bdcc4c8bcb38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5cfdf738a6173df39a930bc13e1d0752332b41062f844593605583d1ec48c07d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec89eab6198ea57e906766f7956cf75ee61d963de767f92ad07a40b74ce9f45e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
