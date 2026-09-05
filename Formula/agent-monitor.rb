class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.205.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0ca01e3d68ce4b828155281da91917302dbf93e680dade568b3da44e62c9c64e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "053312fb8c8872a7f508b0a0f80f5cb24d0db506ae0ae12b4453e007cf03a3a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d7614c4d291630bdc2c5607e1e0d50f98c9fe01dbd9613c1d0a7508c93f89fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a4a4fd65d58c1abce16145bb03548bcddd61a7f8b59a26a498a332fe3ce11ddd"
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
