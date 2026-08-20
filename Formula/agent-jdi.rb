class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9df700738af639c2719a85d3bf3a3af4eb5d2dd75a62d0083d316670587c9f43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "66031daa5908959ccb6a7a93a7c05c47fc95cab9e644ba8af2cbf11d85793adf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0006bf74e7360aebfb9b29df2218b47ac1d2d71a0702a6133c396e71fd43046"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61258152a150aab940e55a86dc887abf6b21ca1750c5db29f2aa090cad58d320"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
