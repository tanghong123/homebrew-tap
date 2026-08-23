class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3d4d32f625fc4e11b2e209309a259f362e7bd3d52f25bd0c1d2b15dd87edcf44"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "79e887cd62902dacd59078b04a9693920ede9ca21d5e5c3c95f8606a85720617"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29a7660b4b539f2be509a4fae1ec520b92fc79f882e2c8bf973ba95a6f5b0dac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab024877447697dc577c3602a9aa8ca0df48a7b1cc9f6c6747449e77447e6fba"
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
