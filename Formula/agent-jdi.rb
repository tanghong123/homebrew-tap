class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.518.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bd21ba30a40c3dd5f448f09227e1a9d72bbf886639b518809b814336c18b15ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8b591b0ddcda296af7dd7ba73e1a2ca74b053f3d649c18f93f166869d8019a6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b2e6d7d078906fc09040d05ab7cdc2ddbaa1625c290f72bac11f9ec11ef3468"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4dd7ea9d181686385bac666e1c604487064fb16220bf887048c0a67310a0395f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
