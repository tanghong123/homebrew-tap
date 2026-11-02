class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.459.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "24276e8c6430c1306f0bf9f0aab1907653895cc07d3bfdf941f7be46f466ccec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "36fe0ba9530bbe424b274eb455490fe4392c705968f1bbd3f6ed3298a566114c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad4b85c097c16853fb3f6cc4c3b3348f1e0a50fbbf316055da52ba398e2d9318"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d48012a59ec9c6b66f33f44550e3aeae3ea21e4c0687377457beb362172e680"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
