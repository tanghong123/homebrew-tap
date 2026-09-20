class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.291.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e9385033b49ad2421f5cae7081c432a4aaf1bd1f47c7c32b77e0f589f509d2af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1c13a500ff3fcd1d060d8ece3c9e4691aab80f0a06d1bcf1d758421b30ee8018"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eeaa52d670232aa4e7585dcbd7cd54c373992c5d79195b7b44900d7ab258f5c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2b3784b211bdc7a82829bf26b70ed0bd18844bf82d191ac98a478001a60100b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
