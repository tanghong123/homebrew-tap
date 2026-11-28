class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.579.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d8d8a464afbdf957e305afdaa5e5a2ac3fc627e33185d76956ba95cfc6e6f88e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0e2f7bfa0522f8ff08b6ae26aee0fe54e327eee6a4d6f764456aa23f4ce9c9f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eadd89e1214345fe0ac8ef3beecb401fc624d8ff3ded97f7abfb753e68b338a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7e903c4e7af98f9dadae119ea296ff06d5c9b79c1efec27eacef1fd38985f82"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
