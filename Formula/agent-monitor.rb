class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.411.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cb61ed4432526f136c14326ce578f4fa3691eaeee09d9b91691b039244ec6d68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "46055d56060fef5b0f090c06709fd37a5d3853bd875b4b82fefed6e84e46dab9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5f5c2733f5fa60cfb6c9ae8d274542fce7a4ff87697f73452ba2f9918a85a55e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a30cf80c3942f805f0eb7734fd36ca15e7a3139856f022715bafc86ba147e34"
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
