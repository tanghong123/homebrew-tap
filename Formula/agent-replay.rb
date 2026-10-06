class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.354.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "925fc01119b00240ea38e896041882447ba1ac58a3f4965ddc4ae45ec6946b6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "44cd3322ba5e45fafa2cd502c7c8e0dff85d65b5c66b9755c18713eb73fad0ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "87b3705c29470d26b4978295b69391eca624702d124321ef7e58eaacc4c15749"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b686fc2f8f899623a694645d1846355adfc0a783adc6de8846a3849ba8f36105"
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
