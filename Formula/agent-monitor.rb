class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.204.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "dae0528732ad1c5f20236e8463139233901281d2c625f9856a0daa5ce28246ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "529ac56bd1fc9e108af8c9f2469d17bc1e8e7106f55c1c90139ad05873d75414"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d2f01a7d1e3af71cb691482d087b8c36fd6bdd6dfa6f8b73d475d482a6c6af1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fe0eb2062b2d5cf6b8bc4986f7e6db043cc0e769d2d2e68fb2c397395cdf9cd"
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
