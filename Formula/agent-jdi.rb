class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.531.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2e7e9438a6953537c6db30f488ea8fbd055118b3b5e9cf38b68dafb5a74e4ce3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "918a4c33c9ed25363c0413f8e7d0b5bfe0aad01c25b5bad909ca9129c8c2d33f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "308954aeb6e99aa4d85c5bccebdc96a85015109dc11bb408944015e7faf183d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "177cc2171e1fb58d67df54110657811cc41fef374a15437631f2bed28edf11e8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
