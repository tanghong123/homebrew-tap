class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.194.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1335f844435fec1b75381dd11de5a487b0503875014919a9f4941e9600b93992"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "643df9113f2a27b2b9e06d9b74fec9607a9fa03af3fbffa07a1f643aa0582ec3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b4d3727d5c5586eb3ec7a14b7653517881f927b384c4a5997e73304eba79d28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6788c25a0e032cce7ccae21db6d85a31d038062eb3168779c9f52bdf830617ca"
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
