class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.459.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "71e7a0e39ad643b54ff96b0e42348fc60c39ef172e71c1eda78d2795330ecc4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e72d50d5118c21eca176e53544028f590c7fc424292c45f30fc43791613d7a5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c51ce9a72f249c52a0a2efa329df5fe99f9bc2366b62458817f1046c6e19d562"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcdb6aa42f34d5d3a633dd610f5dbde79a81b2bc90115db89335fa6ac5e8318b"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
