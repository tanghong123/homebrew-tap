class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.74.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2a5e3c990f4c09a54a3b54611ab5698f86242561c2a996d9260aa4429c5dc737"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1f5c31a9d8ae4173cb482de9014ff7edcb3786a3f9813b1cf1c61945749c9518"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22bd3c910fba983f03b6b2fccbf9c90bb3c85e507cb785f40e819dad36b08a23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93143bf2a7dd2c2c6dd867ee80bfd7626439f6d0aa5672b01f95f8f5dedba485"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
