class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.276.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "beefc66b95b942aa5145c1a75319c54c0ff0887624a9ecb549bec19525550360"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c97564d98035cba18ce4a2b5e0506fb5837053b873b0bb4b21b01763ee43f4dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "266d1f6a41ad77d92910b947ec92813205b932ec56dee5fc67683e716a1bd6ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1dd4c32259eaa3807c5d829be6992da6544f630be165f80d3f963d8b0a0e583"
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
