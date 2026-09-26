class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.310.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4fa0de38ffba2a890dd7f0722c59a893c9f5598d0346f5220d6791ea593960bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "943ca0ea68989a4855f84df68d2a912e21d9b30100a949b280b088e0fac07844"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df0ef552a12c47e5d86ec7b0b83ad38e7cc1d31224b743304912626c2a18317f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89e15c7bc89752e6d232b19ba3053cbd1c51bb21a51920be1e1a56542a8a8d2b"
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
