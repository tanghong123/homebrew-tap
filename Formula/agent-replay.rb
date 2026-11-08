class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.495.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f121fdaa43fee54cfa2197d0915305dc7c11f4c6c3321506ffb873e544068f5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cdba2f6a5446d6e9cf83be089a3e11a2ebf0d2f7f74f23ee64e0e89325594380"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b673a6cbca78248bc41ccf531fdefdab1f3b53607dfbb31f5cab59ae39657f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47020b7f2bf2f0cd1c80bb3e8cbde9c414dafee148d8bf76967642b1ce04b024"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
