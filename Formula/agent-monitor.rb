class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.272.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "21d0b8203b15c632565ee276168c3e02d66e58cac2ad30c21badd3932145be8d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ab9eee86bdc4370f0f306107ff380ff92bf9338df58e08055ac88c3add2087cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8cb31529bca06cec275a3ea547017d1b6987baae844e59be6049ae795b0c0783"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "171cfdac7ec250e8d848e3cbe48014795c9a519f134cc8300e290957798732ab"
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
