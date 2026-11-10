class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.504.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "54da0febdf247c2835917373fb6f50570330d5f7be048c5465250dfb3eecae9c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5d102f895b46d6d251d91262debf729473b49e2f0879cbda30f8b317b2aa030d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2d02ca11c8913b7e03d7b6660173756f0ff57058aa42b66770f31898ae1dd68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89cc0a1158d089b2f084f041aa9e8fa605bb378826191a9a119d52f871aa2054"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
