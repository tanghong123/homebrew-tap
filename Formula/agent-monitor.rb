class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "751ff4c68313841a779eb2e2c967f1493c94ad2575e478d85f358e77e8ee1071"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "75f78e04678a0e92809f09eff17f0889f393be318cd03ca438c7132c1d19e8fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1fc870cbfbd67ea3d5aed1ade86583e24ecbf2f44b8d8e319186e1f1c040265"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "335fae9672faace46084907002c7a3f1ff8d3db7ac7429f448eeecb7695fae9b"
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
