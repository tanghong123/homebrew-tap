class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.160.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "807b952cdeedb6ed0af62a0bbce31e69eef0988a438e9855d5602b5a5acca28b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "435dbd491791d22667f66b30d41513c83fd7bcc3fcf65f8d6872a3c8156c6d4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94832fc6a82f59d8f44c8d5f1016644428c82e4c0db5c13ce6af2acf96ed4808"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6909353022af916e268532de0751ba4c4a61b81ec77ba9de6c6260a10d653f5c"
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
