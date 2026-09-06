class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.210.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ab7ab0bfc021f9843b393c55a484862aab971f1b26cbc82b325186caef45a412"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "49edf3d5294c22e46066ef2de8337e22e5fbce2c45ede8fa195b1c49e9980f21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a1507ef990314a62e3bf2ea7fb6225c85bee4f30ff26c99d3f1819a81f559d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f02a3d3d09f202721c4648cc4c2a8ffa324399b82b1731f4b56daf29ffee400f"
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
