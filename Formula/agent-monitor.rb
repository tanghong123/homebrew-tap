class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.286.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3e2b1c4b144f3891709abcbfe66925edc3495fb54273658932cc2218abe6e8fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3127f80111cc7788aa8606af1162e3d1705fc9c1cc1ff794b43a637609fd013f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6311cf45ebc4a73e859c4515a35814e243cd827adf87b7ea4abd1cd7b4a63f6c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2783e547cf4dbd5961c02583d0bf9e1c0c7ebdf9fcfcc8f8ae10833bb9c53cc6"
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
