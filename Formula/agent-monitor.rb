class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.354.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "81ab3675685ea5591705b65940da8bab4eb0e2c2e5ebc02a54b7038034dad317"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "aef33ea23fbfd659927ce5550818845f6290ac284ceac9a2b6a61edef63e36ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "924254da41ce86864d3ad7b54d4e12d57f5fc2d16058ae7c5ede0a0149df7847"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18eeb7676754e206b51dc3370e1856f468b0fbfdee7df0beda3835a1db4b4b38"
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
