class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.267.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5fca85f1fb8f8116b41cef258c79536880ca0369c2cebf83b6caac868d98bb22"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cdf687fadfde13ec6a432d00dc2d85d3bf7b430d71fe36d9e5ba44665c49046e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8b2bcaca03f58acc8832a4e3c71f18578660ff4fc457c428e446d51198f087b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a731ea27ffd8bcb8dc4d0a41c94dd86ba95cf5dc99efc278b3dee62f43fc78bc"
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
