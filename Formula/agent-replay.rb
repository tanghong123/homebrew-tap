class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.220.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d04182820ff04c6dc1adc6e6f206539af504852b2d8cf14742d5fee029dcb64c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a2e039c6ad69c17e57adec96afbffe16eebbf546e8a9a73b82279984a4499bbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6b4f5db982d623d195acaca1dbb80fe7bccd04f91f58e38a3f166388b142fae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf9dc98bce6a10ecb450fb6d4f6bb2b9a3d1042590ddab85f49907b5082c371f"
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
