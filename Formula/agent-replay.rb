class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.373.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "347a75f5275b184cf4d9506f1856d63b746ea2a4b49d1a5653728f08040cfaad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "96a9fb5fee84ec1f39484ac73f45c48be4a46db41c31dc8f7540acb79b59f7f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d34047d2144c70f538588204fc8189924264642cb0833d9fef24f43fd90b2154"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e08b0e049b191de14692a0fb48b8d0944f632de4c43e2924d3bf6d191ed3a196"
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
