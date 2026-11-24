class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.561.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "71d91fd832839a673da0eed8495646b29c3a9ec302e73bb545021122dd7a078a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a517d2c2dd63ff76d38786996e683c320b1a47c279f26d58c6a042b2e82eea7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b62e5942e5fa61900e81bc820aa525fc297c83975ec0a3741d31ff2812a366fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47894d60cec31cf72110de8b3de6be6cd919565a8639ed0c19ec12a911a72944"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
