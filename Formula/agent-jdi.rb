class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7195fa5ae74dcd5f066821e6b3633dc43ea37ca91b9d8a7ec8468d989026a4b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5168a0ef659f8dd6a5ae6850c1be031a9a7effd07db58c6ffa80c00e110c743a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "caf2d90fb5c65c9ef68cb3421ea5ea217524292a0358b8f0de47c66ce77c2546"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e1a83d53bf44224b6f74b0c9a6fd03b5dfc0ee56c303612233a998a56956948"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
