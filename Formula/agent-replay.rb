class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.505.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5c20931e86ab5684731de0339281043aaedad8e91885d14cb85073869b174ca8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5d289526627a65ffaa1743af196fea5d204356549cb44acf6ee2fe22478b30d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "766a3dd16b32745edeebcba462c6115411d3b8af9ca2087b47e1e5b56dda026c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1edd30c6e98a8450fa2241ab99076809adfeef5097e03552621d86f892797e27"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
