class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.432.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b68d919c39fa06439f0d9fb19c0331c45758ae3552f76355ad0247122c063094"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "00ad8926d8fb84d27d112881bc9a293d5a3ffec2d93ac449ee9d6eef360edea3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "36d8b978e009a8b1b02d48cc298b3660157189f529949cbd081f5474b040929b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7eb70760309b41e80ce868c6471f9f34d97fad0293da5a3d97548ba61cb8b3d"
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
