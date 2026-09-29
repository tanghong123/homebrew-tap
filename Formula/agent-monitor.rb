class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.327.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ecd7fe9e0487cebb87fe262c0cb0ba4399d2c414ffb9ad50bd2106536ad2c1a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a890c524e9f3334df56454a033e860b79ffd3f04ea057ed98645ace55fe49b98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee829c2c4d7da341fca2f75ec07ac4cb5b424266731e891a6240416e2dbe300d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0083e5c68bb1b1cb977d00c4d2a47744ae998b6987cdbdff71f0e2673e0fe7bd"
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
