class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.372.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0a3174954b24c20e32f369c0a2f272c57b7a7556fea2edd36c4a46b9f217ac76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3eb8c1c95c43f2126deb24746307a833c5d9139abaf37f21bbf8a7028102ea63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfcbf16d0518cc252932cc629014a525348586f922d6743c6eac966da1fe2cfc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40f8c815db084bb7b45d92a2c1d13db1142e68da7c3cc74b7e45e1fb0b06cbff"
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
