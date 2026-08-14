class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3571bead07a55bf0697564e1436ba86b79637b2e790c4552dd0a98187802982e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b5e68219802fe56c18960f7dcbe78bceb3a50ec7d5fdda96179211799cad9504"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "857a61b69bd6d0c22d69692fd224455888bd332c25340d1da513da58f2386a9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea6f44d858ab28d8ccd590755403fafc74367935e84144bfa3fda723c6c1291c"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
