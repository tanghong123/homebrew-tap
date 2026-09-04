class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.162.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ffdcb862f198d2968a9d6eb6f6c21cc22483568aa347386eb694808c9424dac8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "565b69d53470b98c7ed777e01c05411d909cf499ec64533021282de9719d1e5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "937eba07f42d360d57ec4d01a0e4a3924894664455d4bc98900163c62c5238d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc4997c5e12f1a6891ea3c5e259b4545360ee993620108bec62eb9f2d45196cc"
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
