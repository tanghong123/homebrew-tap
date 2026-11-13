class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.518.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4554562c314d32287adff1a22f85977e5bf23b87c0b4dff8ed8b84a7cfe00771"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1bfeb3afb57de213c95cc5fff1f456b4c7905086abc7682c88ef2fc238f900a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb103981ad3205778a7f11f7244b86d334b996bba6895caf17cbb80024f5e5ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf54a43aefe9fa80b97d9babb07088f6923a1b131eb3d55d16fbdc3880ad0ab4"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
