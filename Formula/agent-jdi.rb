class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.141.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "08537d598b4081f82607b4822875e388453c7c7cbcdac03dce6c1782f3d1da2e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d41a50f3def5485518d32140684afc80a8b35eabe003f2cb3f092eefb5738ba3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed2f62c485a85660a5602e2ca76868ce7475ba78dc2c48ff8e96e326688e1461"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aed13aeeb0d65681598d98ffb903fae8a504aa304c282b8c5f8cc69cf75484eb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
