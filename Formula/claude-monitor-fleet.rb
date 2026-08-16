class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.86.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9a5849b2f585d7e537e29217cb384c88487fa2818fe2f851e30f1dee47f83fc8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f806f1fb1eb56311fae36538572c9c1472e3ac9d3d0fb2af6f1aa346974e985e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "619c3de45c2916308ee01ff7385423515e3076bf75ae08928c56615572049090"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83f3f3573783dbf014cae631155d0b9f8cb22e0e1d13bc369b3a3cc5ec23a642"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
