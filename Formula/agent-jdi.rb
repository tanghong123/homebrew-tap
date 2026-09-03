class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.140.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "71444e0644dcb3af68a9519acff58e506591690180e6c10adc483348e5a58cd6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "04a1812da98d85c8eaaaef57d52b02774cedbdb187d9fa13ab6f84eed7da2280"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d7006a210343d9cc5d3590f0db9288c52038eb28c459ca4321bb612f9d0ee282"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1053815ba350fae6a017ce9bda862aa944680b3972596d1c15c166ed24e6050"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
