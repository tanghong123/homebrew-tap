class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.353.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "382068d17952ada55c117f88375c7aa0db0a0c69f9ba33d9f02e28b04ba249be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dde0a33e1c82864cac609148fde8a1218b1bf201742058aaab17905eecbdf9b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6d9529393d01f156696f82b16cc56b7b41d9c9c83f24b6f9987ec7fd3d0d5b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3993e250af9f6d33577775cd74d1ee8ebf4dae8cc2c21b707d4cada81e66a887"
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
