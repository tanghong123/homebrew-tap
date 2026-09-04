class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.178.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "98ab591b36239af5d6c2fb1227d165fd1bd00159105636e8dbdf59da655b4286"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "46ffdfc50391c4446ddb7014d4b75a1abc42bccc5a8bb5525a8e424f806635b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc580d0811cac5662bfc898d74d693a336d1eb245757f6b76a796473a1246de0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b09594d7c4aaae3dafbd390663de9f848be4119c3314557fc5cdbdb49fc2aa0"
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
