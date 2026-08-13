class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d2c2db438960fde4402c21c4c48b41f87c85993e6a0f2b47ad1a2931b1dd323d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a405faffd15b3d77fcbe1f1a7a2888bad77d46bfc20534e7afa1ef78aa3aa6b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3af13ccce3e1a5c48c506ac83af7578e808b29055505cffae697d8a92300a451"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba959de8d92e86c4c95d6d1172cfc954f1af4363c61ec72daa59f1ccaf9bfd99"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
