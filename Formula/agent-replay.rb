class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.472.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8aa0ff743a7ac2faed8421b0709ad019513caa157d4cafce6a5f72d68743677e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7f30f5482c72109a1b27b2cccef38fc2561607fb8ba14f8976ff0efe46f5e9e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3ddf7b15608489d2039dcbbd7b96b9427ea7543fd63aecee93de86004403ecd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "496c0bc86cad4f4f93829df3cbc11fd93743695ef9764536a8d801f13de1a4eb"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
