class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.489.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "acc31aa1c2507dfec99d0caed6ead24986859d9819de7e44a78e0e85afab8d20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "774bebfaf78c1e1409c3317bce1054d7cbbbb5cf90d6a371edc760654777b232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7f8e3100a72b597bc43b108950a93538fc03f0c98f11fdef1cd5ac28e603bfaf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e7b0d8bc7d4fbec5b8e3b07c16a9258213251a46822d4b42d0fbfbee5b6dace"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
