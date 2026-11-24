class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.560.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0b2dc113a1b660668072c3d8342ddb23763a9dde46e4a1ee5596621199708b2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8deb261ae1e0dabed9e3b93dec6f471bc9b42a12be05dc4cd6db73a23f72e70b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03ed5c45c2d19b50a4744baa62a625fe737e6724f8a10b7420bd5230873ad408"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b90d028c8bba9f058076c37fc6bc2a9350f484e891718ab6fc2156d8a886e02a"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
