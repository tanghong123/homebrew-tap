class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.427.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ff8180fdfab860a3ab721f9873f85e6f6729e26cb23aa5e688e1f5929934e2e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1312e5460a3ecd74c8922ce2020ebd13e796d1260905965e8480380538380a51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "32ba54b2da51ffae51068126ea498e4c8b758a60443f3494a22f116113e24090"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4fb4566baf50fb2a6e784fb9c212c0756f032507ddeceeb6f38ed88524437e5"
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
