class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.356.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fd4130d2ad2cb6340a6cbaf531e8707be647e1900a55bba973d22a73a3d5e57f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8e496dcbe257a2eea937edb626ca25b085a9b0b41d2e7b1be29b0e9e9cd20cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30795f9103f93c37cffaa4b0a4f8231ddca80a1cd156dd1f223c63c3f66b6e4c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "321e740e8b6320343944ed326078467ae80504288dea074816233b39fe0df682"
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
