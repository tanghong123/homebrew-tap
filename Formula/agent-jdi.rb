class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.158.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7783da91e334e50fcc2deac77dc65bdb6c985745eda98fbd01ff86511cb0b0d6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8932214303df7fb518347b8ec1b05a5debaf43de61b5f65840606de95d1188c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6576837065524d256fa33793e702912314db4a57b251f2cc17a0bd381ecb8255"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ad698e55028291b87143ebf23cfcbf8b76dd817d58412c3dcb15a756bc8c138"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
