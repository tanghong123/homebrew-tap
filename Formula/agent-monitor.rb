class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.165.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9e72ddf688c7f59ead59fb7a6be7e3c14b92466defedae7022191bc32dd1d644"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ae847822dde6ec5a70f08625badc809b6a1884879e9b17268c355fbdf74855e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6293fbccff6b97bd84b350ad407cf6c2953810b3d3cddc87646894f912dd074a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "951d052bfea8e96bd4c9c5ddc15637a238421c8222080bc08d487f51c346e8c6"
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
