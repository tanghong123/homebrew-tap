class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "237b4a99c2ab721070f75a1a84d98f83cf10ee39daa3cfb1b813568f7f74161b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5e0818378a26888f47ef76a03249bd6ae5bb2bd69eaffff99d65cc67cb31c297"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a38bf5e8aea2bfb2268d3e6de8ce7a1657461559cfaa4a278ad67fc06e958f82"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67b0515630dfd10c9422abf1e291c05f749f4c47aad7da3bd617393ccf9bcaf7"
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
