class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.364.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "371bfb8f2bb2c50cb33cab737fe6176acf0e6d1b7626fd5fcc780db65e5eff5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fa597d5060809d781bb44b463d2bee10cb5dc7fa78c0f5c8180e372f8c1ad431"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "132b753e7cad33d3b4af0ee10e332c72460d29d57856cad5977046cd9c6ded24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "221828e9c674bae81b1a493cb04f756328d3530e62a6c2d2585a1904f8e5e1d4"
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
