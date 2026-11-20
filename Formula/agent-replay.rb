class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.545.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ddabe9ddbfa6678b51d63f2aadf599b3f48310e7e8dd957d6ea8620150e308cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "795bd0f604fee337124e7298de513057b510fee6aa16a33ddb176592780e7e01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98da7f3ab8f5014c81e6eb3e297437ca152dfcd25885ca81a405eb5f5e9759b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "981f115a1bef9295eddc061c6ae5c3220aec5d36d02a5f4868d128ab3d378ce7"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
