class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.343.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c91fb6e2e4481fffa7e837083b663f8ad004aa498e4eb753475353cf1fe17076"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fa26092eb687863247fe376ecf4bac44aa036530a3c4ae9aecc55ae5802d27d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca5f448ec65a82127a308fd353891b159f53c2d7f17318bd547fa69cfbc013b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a634083668d83f2c9aa66f45a74cb8405091b5be47abbb2aae6fd9d06b38002"
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
