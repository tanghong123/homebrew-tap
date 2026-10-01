class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.340.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f4d5d400959ff2543e4c7da955a7a9fe2c508a2a6e871d9ea82044993621b35c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "103acf10577dd28043614c26eae055bd950337cf9c46740398b0d8f626a49450"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59098708751bf392632e090973ab915fcacab8b235c84029eaa06dbea9f3c10c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6846de036dcb46ab0fbb48795578ec55d3f53e71bf4c863a54f74980f0456a6c"
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
