class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.321.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "135454e4fcca49901efc0c5fbeaa8bff65b7fa9025d696afe265f4b599c1884f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5b82736510cae993e833a7c8733163152a494d47eb4ee7a3ef7ca17ec690387d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "598f61e33ba2bdf3197700b8db38e80dcd078599f15b2e3f6a1bc37aa23e0229"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "578f63b7fb5d964292069b5e08d46237cddebd4ae061066644beb86508b335bc"
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
