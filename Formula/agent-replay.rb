class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.191.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c9f35dae19d16aa8d149bd7ee2e4abf7dde52bb28d8ff0618530a0d8bcbddbc0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "505bff76731c23dbda7742f2f0bcbbd506a63c35b973d37eeae4579b808691ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30fd87c147a05cfad5a43ada93ae5ef737aaa8b2ce788c7ee5fd11ebf868b94d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3bb7c46a309a68678a7aa61e452fe749c025fe114b9c16c15ed94862fb6789d6"
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
