class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.301.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "48c5a44144577dfb31e55a4102909b117ad125bdc9b06ad8821bd1f65cadc79a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "824fb76bc984b1a829c3bd4f228a1deda340435aebb8ebd3848fb12b905dd98c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51dc03b6b4c78a70ca5d35a78920e8894096df82c8ae948b8364831ac4ecff00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b3ed18a85e7850a01d8923627e97d759e5c02dc88ae1d94eecbb74ac78bd139"
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
