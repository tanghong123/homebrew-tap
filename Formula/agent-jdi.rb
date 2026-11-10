class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.500.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "436a72ab75a30f3dcad28599f09cbf40758424c1c8c89436774fbfb0c4aa9851"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4ff70dcdafcd91c7d236c84e57c04363abbc49d87e5d2d0575129a5907c4db54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da03dfe474c1b2cbcd6eb7c216a02a9964237608af4d50af5a3eaff443bd2608"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9dfa6a8dd2f24ece1e8c4f86f1879fe695158722ab64867c5d51868349351c04"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
