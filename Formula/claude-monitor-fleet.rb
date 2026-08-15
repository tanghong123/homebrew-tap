class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "81305e370f610bb78ffb14a5e58aea12c751755a20122678283959d224599eb1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "02140221d327563614d0ac13ba465c9a070e3e9caa9594cc7a405ddc7ec26509"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70b02e0bd3ed51cbf79ca6aa5f8a5a3f4098f7b86f0c941078da540e09ba17c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4745d4ed66bc7c6578dab98383b6e8fdd10a5c0aa2ad074282219f4d8fe72f6"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
