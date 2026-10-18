class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.385.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "308b2437cb71ea42d2dea22b352d4ae4354e0e7513b5267a3923d7251a87a28e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7218e2fb7cf2090ae5194f07feba3311609f13ecbb8d37ec21fcace3174707cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d9ecb343c90a05fb04c69b9a43218cad9d6cf887106fe3803d7c2f8c0082aea8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b82163e915c1de66f643e9f62a55613ef6bd3f7ea8082281ddb73cea5909c8c3"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
