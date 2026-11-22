class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.549.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f2ea9ff9063e4b411a7dd9e3b788715e42f44039bb703c3bab104c82049c8ffe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4b806fa499b6e0b8b0b947b29feafee1cce01f6c056888f667a2523aeee1984c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4a15281d2e615f2385fbecb891c3ccb97772429c141b3b8b2e879125fdb01ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e4cab96c546a7796c50d857bf14135d7debca93513bcb79ffa420cfdadc156a"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
