class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3f5fede26d03d8065a04c5ca879e9b92891a076de04f2fb92023a64468c88984"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ea25769b922097f0c8935ab4e31e4991fe1e8ce75912b12c1d7e75a8b5b36b5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "49529d824e5d693de8c80a0ce2188c75b7b409d916d5ef9da3b0cfde5b1ea20e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1d1b98404aa53f1e80e4c2eb38dc864a65666a24f8266edaa7a357abf750a37"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
