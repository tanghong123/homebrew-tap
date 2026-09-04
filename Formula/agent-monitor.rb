class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.169.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a1fb2f92d9006a715925175c9cc918f330ce6a51bacc5c06bd115136a8ba317c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c056bbb55e5f52d409f16e8431eaf202e3ecb2d19e19e5f9130d0f71a875e6eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "454d3bd8a33f443623f176e4860a26fc00d808b362ea07dc49816f55e24a8875"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e665051282128d3269418e8fe080d4e9fd9ce6249a1ffc745c677148256cfa6"
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
