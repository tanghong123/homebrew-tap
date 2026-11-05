class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.474.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "60012d3a0c5459cf88bf85592f57da37d3245c806da2e26bc828d47428a98468"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "aa1a7faa69c6785ec60291e34bf00b00b760d0b458d37ea84113312c7da7aa0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1435537c78c708d7a1c357eff2cb6176284a68b1f33044a21f6daf0af34a8b77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb337e62d28cd798b4c52899358f479bd1e9641fee47de3c8bdfa41c6776be10"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
