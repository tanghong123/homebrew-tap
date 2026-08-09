class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "765e451d89512b8991fbce3292141d095d042706c8ac04c8cb585e2692b47f30"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cb645437842bb8211d498eed3f8dc8098ee995ff1acb6386e12ff8ee630a7434"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0a8943a3e16db2aa9cea8be7ca2799e93ef1b0cb63d36ab91fe103515983fb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d3c7a3ea43a9e590ec3f3e11c8bdb99138b16b810d5b9465ef694e33a483494"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
