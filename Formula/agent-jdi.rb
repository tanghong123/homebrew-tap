class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.434.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bf52ff8394734d1a9cf38a354c05aba3c0567f07f874abd3b72bf3cfe258b10b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fdd33e93199824e8c9fb106c66a345780f3630861f714f44f94428c220b521a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cffe382bbd2178990ee66b6d2acc00502827699eaea2f02f822071a0d5866de9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9551a96b03601ce24978b55242ca20325b49979bfb02ae8a1e5ae92bb1603756"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
