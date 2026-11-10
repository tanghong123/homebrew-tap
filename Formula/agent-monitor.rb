class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.505.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "345c5a0e8a95b1fa9d203367ffd1524969f33607e7e67661f8bc492dc9b3a1a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7eb5a7f7fd9303abdb2fec068464021a88efc55fc8784d8423442606a3ceffb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "246e97014049d623a04c0c32b8597ab5ebb76ce13665c5c1fc03f257e85dfbea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1fa120cef32087893d062b0654a75fe7d3d26f6c1a01a7851c209be1ab15b21"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
