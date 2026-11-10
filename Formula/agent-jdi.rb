class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.502.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0985db9db7e943476e2cc5ff8c7a88cc011182f6ae8ac535a28684a30237d87f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "57e43220616197f3ee586be442c8dafc1175b3330170b410b2bcabd421dc17b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03d0e1f131569e6f16d5be5d37a252237549f29bcf0e4f4f8402b1e40ec6db9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce287d8fe69154cc0d9453bf03599af8b338f7e69811e1b143c7c40b87e8f753"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
