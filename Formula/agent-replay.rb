class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.241.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4860ca431fa75c48054022afef43dcd7e3816bd4139103f93de1540c73051760"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "08f3ddc534879776d1d0f8230e9eb8a43d7b971a31b2c29e61b36fb7a0c7e720"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "880abfd96839d5bdfe5da5e54dc85c7ed65e2c44ca540a3f58e631c0006dd9ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4b4a1bba473175be0b37fc30abde2040eb7916e3d016eb4030a8e1f4765ae50"
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
