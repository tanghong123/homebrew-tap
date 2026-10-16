class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.382.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a77794aa1aa0dfe7e28ecc9637af10ea3778e553a2f327d48940c3142fd19d34"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f6d2fd1fa6400742a2703470978b85ae70d220e4e61508e05d3e9fe6f1786d7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03b3db4470848034a1c02c659ce142356b94e91db356a67230b4716013614ec6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d618351fcb78baf3ccb31e04b1602f173ac303201e36d156b28bbeb7ff15f05"
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
