class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.242.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b132516439b1a78c120023694b08a99ad4e944f8a87213c2051ac2f21596ec24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fd8413d59453acde489b4b87b72f7148d8ed26505517e25bfb6e61501a9bd318"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1d23719b34c64d242f761309e7384477f0d349144eb1c98240a2e21d013ff18"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e000fc793ee7cc1e50389dbb1f46b8eff315f8113133a2916a607ec5ef74eb3f"
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
