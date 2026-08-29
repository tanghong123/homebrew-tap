class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8ba8a1c985410632d06ed11660047b5dc4172e7485a67c6f98e7863d5731194c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9aba3afc8cb5d395f8ea85837452c1da41b8de1ae9719cdc47fa0c6132053ce4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "485e33f334aec82686dbc2bcea72268fb0058844203984682cc45f9fc6ef2737"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49ab87d9c63f2baa9d40f50d96c172af4dc9119045301a68059d780a2b952e7d"
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
