class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.31.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b2884bca517c46f170dc58d044c934be9041b93bba24a716bbc25c3597558c68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1fbacf054fc16f316eaabaea577eb9b9c9438447b4952d1ce30e6c8386bc98f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1989dd893cbff55c850a030b44ffbb02cfaa8c4b3b1c2b7254ff90d7d9515ebf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f15e149c35d9e7417658d94acaa324c50d3e0716bb13aa1ae7edbafb72413e2e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
