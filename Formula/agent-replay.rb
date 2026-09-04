class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.159.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0c5ee7d4d6d6457b56299f7f34bd65fc2ff7f14a08cc16334c5eccd2c17ac1b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "07f83f504197d315093c089d76e0086ab0b88359b697398ea683c334e68698df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfabb12b21efe7c437ed9fe61d907fbabc2805e21cb479b6fdb529e7f9d23414"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3277f847d73b88900c1d806f0558b62a081f68b61e049dc4d0a172d02e506f91"
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
