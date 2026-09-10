class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.246.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "843253279005a59440600649b885aff49ae6d05f92f9fa21a615c7c4ff841d42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "62bbb02b471a457cec163a182b76349bad3a6a5f7d62a6bb0be9ffde559a2b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20044b65f984003079fdba62617780decae98ff886b191935d9d1b94e9d9b2f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0bd54870ba1a50d462c69ba6ec330e639bc7f252d873c5281224d549601f4d5c"
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
