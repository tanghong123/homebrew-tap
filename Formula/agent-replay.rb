class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.483.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6db34bfbe592c9b01f8c0d04cead9b0a07736e63cf354704413e469943e22cf8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5cf2bf187277233431439fd31545fb1cab04440292c5eb2c53191be5f66da4b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e2e4dd10365c0702a9845205aa7be714b7c3d19047ab62634f618d1f9ba18150"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de15429f14161c0ce5fdf1ac9b7a3b3695790756478a9b9684176bcdda65963d"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
