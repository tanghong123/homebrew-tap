class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.372.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e025e78ea7a63f46809958d5bcf0889eb0145c624ebdbf224f15d678c0398add"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "301b2940a7a4b2e4296b43653d740f6bedfaefe4a006a893d4b43358b6db963e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3090805b7ed51259f4025772aa06455db99b755b5457b41be2a7d2134cbef80"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a4f402191deaca566a84df1dd278115b9cbd06b4e5e0c26a5e39960ddcd2c4a"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
