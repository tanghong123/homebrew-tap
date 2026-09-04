class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.164.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3008a780c9253a94170888b82a8eaa7f0ce5dd1a70b2c8832ddf0ee2d4eee632"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0e01d4fefbde0b88533ebfc65b5ef0e87a4b8c8ca39602d0cfc152b9d2de5e22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff33fa5bd4b0e9fa431e6527b3ab5f1b85edf8abf4c791b775262888c082f736"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df3a39966d9fa154a3fa6a60775a48a462fd3534ad377244da3c48dcd15284b1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
