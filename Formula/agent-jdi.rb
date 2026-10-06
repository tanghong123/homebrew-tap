class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.350.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "915e983535abacb63e27b01a955a8a3423bab87036d9802eb8e36ab36f1bce21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9467fcd28646aebc50a7b575a9b952645b6d1e685b806695d5e761ada60de45a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75021fbd74ea13735bf3710d3dc8ede337c2d978a6675794335a5eb3f3f2990a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03b367f8bb505202dcc02c91bd1cae1170fb96dbfb6fee700636c53c49cf68ae"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
