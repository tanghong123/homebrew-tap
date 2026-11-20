class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.542.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a31c4be39a38de4b305d8eb1fab51f75761ffe19587c1cde284561b9b2dc1986"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "24cfd94c5b2122ffe273fdc8c115736f27451b6201a6dc1b17a2739fb1d46578"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da6c50545c16a13f5a4a7556d6e360f184d5eb00d3e7c7dd66a7cf0c4b5625eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c3c8d68182a44df14180ebb3585cfcf6c8ca9196f8ec5ee0e7e96a91c4e23f82"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
