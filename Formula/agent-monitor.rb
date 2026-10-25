class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.421.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bb0bf69bd31bead17abc46d8df774c56e18fa23821e9e89f45882d3c5d57ab1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9170f068df3c531601dda26dc12163ec07fff0689974fde27a18c391c0232481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92a005608c8518846f5df1444377c78410cb03e07bb15fe0cc38e832534d403c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c008618126521c319e5c754593c570c106ad4a084315d306f3c3b48c46dc33a5"
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
