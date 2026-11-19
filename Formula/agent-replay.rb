class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.537.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0d2be18648f78fad0d667f0956c27e8f0c9fc46ac8ba93449da6dd83376d633e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f3367ff2d0a5727c4118b0ba059dcf9683d61b96026e2826950433ffac30d02f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "401035538924a17d7c6028181ee3cf47d7e3fbad9def2da27772620ef31a815e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8880b9117d445bf5737df0be62e6fe7c7f8edef782aaef805ba2b1780797e722"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
