class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fadcbd0e0bdcaec71cf9dbba1e08d470c04da2fc7c260824e8f5d7b05141bf8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "897d21cdb32e3a80367c67cfb318753be5b5c94210243c37bd1ef620bc99fd0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8118f9c160dc5b81e299c5a3b5009bd8bce42b8995db9db5dd46833e41e2b562"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08c621cbac06d87381ccf9c60d82d14d073fbc5d1e7308e7aeece678cb9b6f39"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
