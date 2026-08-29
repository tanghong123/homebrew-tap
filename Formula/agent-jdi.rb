class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7c89867a3e8620deb12fe3078d35f8d2a50ad08283c4c08124f95f6b29bfee27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e2a19de97762ebf4a78096928d192e75779752e8a991cb93560476983bb59395"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02bf7065c294695fd365539e2ee86dc121091da4cc17be49571d9ca72492c28c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9a6c99d71b8175c30280ed6978ac434a7fac3a146b76867e343562bfa1c461a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
