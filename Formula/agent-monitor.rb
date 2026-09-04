class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.170.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "91ad0cfda1584c0df1395ccce940cdff41f24cefa102d4ff2e5fa6363ca80ec1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6d3954bac67e3706d09b5a2d9893a837c3f6d415a464641d1b92faa66e44dc27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e99a637a68aa106e4a96678684bf72cb5b2eacba9d4b9d5b79034dc4099529a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48c17da94db0c4ddc46c4fbf49afc24a924c4d2e5b0144c1e16c8dbeebb19935"
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
