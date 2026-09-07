class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.226.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "45ef78a138152ab81d4150dc0920d79f72732fe38886c720c4dc6cdefee428a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a77dafc2c552dc7b03b28076e45ada8e46adc73aa476c5fb345d3c03f97ac83e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d73e1db20ef1b49f12480912b09c102c14b0bc664d025b82ac3c6e92a4d6849"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d26ccae142591c308526c6c3da10507fca0e4e3fea1dd97df287712d51b69de"
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
