class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.492.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9d4142d65bb3afb5b233d92ca67d1fedf712c4390dac25c3f8deb5c80c454d19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cf0b487c652d25253f69fd64fae68187944942760dce966d1cb3f61478620f26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d7664b6e9a718a332344f7110e4ac5de50ca85f14b25366bd6534996a51ffae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7272ddb92dcee1bc9299eb8a618b1811b0ebbe8b04c2789d59656917afb924c4"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
