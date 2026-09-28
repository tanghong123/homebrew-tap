class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.323.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "76e742f2f7184c1b0fa71be28574d9e61bc10c592b787b435ae9433349119f40"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ae1936d83c80a1275eefb3540a51c9c97bc4d0d021c54c0bf2034da18d4f143f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e54bf4de8445427d3e74be5c32670238f0a05b604e6b8c23ea85d8c23422646"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "668a94076da3c8250858ec64141fd2d0a511e88f09470ae90a6b4b8a39a39c16"
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
