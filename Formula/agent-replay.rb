class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.576.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "886db7c3e4e70811e1c80663661afa6830009a2ae255401e831981d18082f8a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "958957ac216dad5531c18fcceb8c5b6a684b11b2034fabcb800d10e42c42ab85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "176d10db05f4d13495af6aa4105af8b6fabfbcc4e24eddcdcbe9a1708e66e98a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "746a6d2ffefe57ea06514d2ce05aae0a17c5f502e9be5369a08af606fcd7583e"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
