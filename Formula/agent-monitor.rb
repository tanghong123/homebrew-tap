class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "07c9b71e12f52fb77dad6f8c90c7b2145ae91dcc8abeb59e0d029b153d0a55b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f96932641a31f14640287b1b42e959cc803d6acbb79b16e3986c86053fe86d01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b4f87010f5dbd80882c54892dc83f8a8420f95f38e0989c34636b9c3bcc56d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47856551c87a6c67d5a24adcbe4dbb4f4c817d511d2e28d9693f1cc146b27346"
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
