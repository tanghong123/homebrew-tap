class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.331.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "063c885000bd0a3e9f7365813d9b024a27fa6e423c91144a5afe82faa4fd5de1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bc52bad397cdadc2bff75f8e832280a04b4fbe0606d3b54cd9790b67944d1496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "470b0ac79877fc6559ffd699e19d2efb87fad266a45e7aa51a078070ba272bcc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc5a2ba674fc048e35d64ea259d717093e7b03c014c2bbab42b7345eb9d223f5"
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
