class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.108.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3bd3cc92e3e81e8abe4bc081ff2ea5665810a01638efc1e41762717fc6582a06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5a9da9dbad8658604eff5c275960377a7b23ca3dfd837caaf3d5f19e7adcc24f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4f0e247b60d3fb7f5b9fd9b65cd9843059e96392f4f540f54dc69299f535d70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9962f7ae2de59f86437cf25c7ec516fb72403651ef669e4fe6e6906627f3519a"
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
