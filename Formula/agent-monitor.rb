class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.219.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5018eca75adb98361d759c134bde4331d1b7922159b2aa57459396bcf05644c6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "764c253ba5782641e819fbd5ca1cf64e528d7faae0b81b80b90047b64f66e40b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b7d24ed576da104177758556c8f3b4c63a5c406807b53273e73024aa8ad834e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02204ff4a8e02cca85a4735ebf9af43243939ad9640c35a1a8d1b28b3ac1f7f9"
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
