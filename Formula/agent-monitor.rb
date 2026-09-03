class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.145.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ea6cb5df96c149025eff44fdddbadd9d258f8b72e4a543fe937d95014f4cfc2d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "43ed05c8e71e14d2c73626602f90777b301db26579288f3c61a5a4ca573c0d32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79654838afd5286ce0f83c2fe98c00d05156b338e261deed3a6a78e79256aa55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a44e4be34a5bae61085c341510abd574d5eca7a36b848880c8488d1fc8a3546c"
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
