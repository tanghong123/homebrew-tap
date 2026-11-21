class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.548.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bfcde9506b4370b45ae862281983ecdc74fad0fb1a1d75f1fdf87bf8d78709a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7d80cb9b4cc97bc51cad86892361395045514b65fb0e796c85f86600c77e622a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b8dc360c365d001e87e389f3af165c60cdc46ccb882a8a318de90720877fff7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66c22d8dd1aaaee30e5f682ec9d3a68d4d788093ff93c89f0c9ca5033c5c00ef"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
