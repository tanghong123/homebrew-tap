class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.484.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3ea07e1a6206d789ffaf553b9ba117f937e7ad3708efb72897178fd6eb813174"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f4b6e78dea72caaa49cb2cfac1c1c18c9674e4a18402ff3311cdd8bc320bc733"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93ed168eac53bf6b94f5490f13962c9da2580ea4ff05d6518e5f7444b651a41f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "797b1e3b9d8be7fd01168063b04ffd500ed07020b03be4a9985ca6df1cda59f3"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
