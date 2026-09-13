class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.266.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b0a3333e580438095054945d40c443995b53479eab1a5afe9788335b9ee44113"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d67d696de0a66cfbaad80b08c4d7b823bb94ae9bee064ede77edc7f4adde4bf7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3c0856c51b282ef778adb6756298ef73a355a24260bd9c24b03557e2c8944c6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "125875eea19c280f887256962bbf5904a284280ce554b5cc6f27fb276114164c"
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
