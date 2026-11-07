class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.484.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bccdbdad2290534ad040d20063eeeb8f187878b0a842b6d0235eb611c0c398cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "33dd576fbe98a4a78f98fb27793874cba29438dc9d46e3068776a606973cf633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "463e3eb633e12ad34e6746d4c87cbc6fb45746b5c689c5bf20116e8cc3b56430"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3dc6d544cf5d1021923e6c664a6c2457b1555518ed49000798361f42d210d717"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
