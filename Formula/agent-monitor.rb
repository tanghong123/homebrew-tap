class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.284.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d36be747f26ae80bd448dae5cfe7a18f5183a49173f611b26a7881bf158fd0e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b17670494516991921cfab1a116b3712cbffff4b4d19115cd63249549efe63ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56e430c434111ea0036c898e36df8899e982df1b16fcc2443eb6bc5b8f393c21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30bc2be10823f357d095d824e3187462b9d2a220022be84c0f44b5870ad88300"
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
