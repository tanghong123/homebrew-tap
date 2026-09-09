class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.241.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d5d445006f97637ce47e429d3d2bb770b0ccf28dee095f0877855ef4f77e731f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e69e0bf118bf3f65a0244de28cb2234aa604e79fd60acf8807167398767a5982"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52ddea9130ec7ae4d52473a3d5c6321386fde9b297294da2fb4e80b715fe0f9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65dcd9b7df57e5fce1d52deb13470e4c73dd60e869e7d25dfee43371c6511ae8"
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
