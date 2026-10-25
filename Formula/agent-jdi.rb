class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.425.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f1504c8942efb5a22b58964f854d3e04e33ebf38469ded471845323837337591"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "33a67ad57c6b3148271487288bbe52a5c0a744d2a12a3a8eb07f7b12f7f2c895"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a59efdc2149593c22ef94daf10632cb9e5867bd78858a9cce70260309afca396"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1aec8e7f3805e19ef1205d8c2a1941d2b21469597d9466dcf132b2495f3fca7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
