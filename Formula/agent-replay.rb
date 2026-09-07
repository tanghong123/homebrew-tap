class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.227.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "84eb3a43182a5e9c20ef6651e1b0fd821c63aaa4319ab12f21ca0bcaa42269a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "50147d690a84e4649c5bad9bd12d42a73d7d3ab143c738be07772678ecfed36e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5600d0e312c798f307a7e8cd3648970d8a508aee9b86dc5ba4deb466050ae5fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "557b488b793d887659d260d8d759bab91b8c4113a8f364961f0c812355e72953"
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
