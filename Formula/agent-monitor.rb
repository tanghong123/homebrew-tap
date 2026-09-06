class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.209.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a33baf6e8776f9aff7a12be5269318a9ac7331265866e5d33c12086ea56d03e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4e07a464b1da833b60deb7bd17f303863c62bd905579019f94bf7cbeb242c329"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7183bcc074be6236e37dfad7c751faa6ef9d4a9a4312ada77759189fb6fc92e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "974bb954c5ecf49189174320f6b55dc3505726425f7e2af63d6e4f79168a31e0"
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
