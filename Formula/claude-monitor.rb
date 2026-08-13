class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7252453edb637a786d41ae1b138247c6af33b39fa51934ad9673f1c95d1774eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "88fa48deed802fa4d5c4fd82d8d96af3804ae86e255c184cb5bc6929219e0c2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f4f6f79098181488c49aa526eb6f84d127c3d96abbfebcec9f551ab8d6023c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "412ac38b24936ce820040ea2a67dbc938f5c133582f389c75140fd14eb608cfc"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
