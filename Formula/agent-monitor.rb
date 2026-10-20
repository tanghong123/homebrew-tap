class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.396.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "149ad392f9f26a40830032ee0852bd27847dd6e8e38fed48c27991165a3f94e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0d16e075e473f6f9a1c8c7549ebc7985047ecb0f8cca5012af38f6917d31dc06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f451686ff665f910a903cdddd0d6e3a0e5818f859948bd8dd1482d8e0d8640da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62363d8d109fafb8aad805c93ec6546d840d855001d0fc573207408b03e176f7"
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
