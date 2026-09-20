class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.287.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "84c860d6a654e38a5dd4daf4b4dcafac9f217692829e072af665b5c5d13ae161"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2a76e24d9b7b70bf1f2fb4a9f3d730bd52ea4562baf9479888dc17931426d4b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52854407a4a6c4ac26cfbf5f60ae4eb77afc4038127bea390b0ea12c0bfb335c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c8ee2129b1238317b4cdf0881c8fecab3c3f3d328b5b42d923265f9a35a49f5"
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
