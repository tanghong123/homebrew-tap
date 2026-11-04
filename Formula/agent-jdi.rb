class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.468.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "344dbf4e9ba7574bd0fa714e1ed038434c8130fa620c2f12f7e33af25afb84fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "295143ac594b1201c9fb9a5ca21780e95efab45cb459cef5dfeb5901a82cd33e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f901e14a4fdd38498537eed93ab750b74586d7074ad39426c6930a7c1754b83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "37e227fa8ccf072a43727af51bb6169f9eebe4f8ecc8878c76de41e9a9b95561"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
