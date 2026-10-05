class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.346.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e5c019cb2af082c0cbf455c8a3c5e08eb3467402cd7fbcf4420af579d0b636f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "20dd73b6b42e99793bc4ea317c695e776482bc54b3503ccaf23671e5ca518678"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3dcd57202490cc97d759fa16f3b859964c0b7dc54fcfc10e69dbb3a750cf81f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d24d1c5de2d77f21d1e7d8b13c3e52ed5c870dbb4f646e12f72a1ee0ace299f"
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
