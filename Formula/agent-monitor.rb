class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.181.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1e144746fb3e3ca5323159327e2f10bff208d574c2c3a72c10fbbf2a17f26955"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9e6adec4a535ef9eb87afe074a59633a99fbfeb5c449e6c6640bd2eea37f04d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6e9ec7944372762d371d59515daa3b52a2d57bdb921ce14c2df94004d9b0964"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "711ef05548475e3ae2331c0da7004a71c26150dfefe067b4b74133564f9fc81d"
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
