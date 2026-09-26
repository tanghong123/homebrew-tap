class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.312.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b2cc4638137a7e14db234d4c43f77c9c328c5a32937d22e2b1692c8fa4a4da38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "97146b2565901e8ac7238ad84f04b90d11638459322a3c685966925e7c25ce42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f1ec173d13771b5b83a02586fdd43588d9ed6bc5dd79d33497010bfee414f2f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "172f8db00f55867643941ebba2c918ae2d059952d2b81db655f6fed02cc842b4"
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
