class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.82.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "75a61ddf19016708397c9e86697229a913db27cc1f0eda7e4cb1164d755a049a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "193aac396d1567fe9428127ed53d93b9427c19a8fa94ac378fc324b0776e5fec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b073a01ac013a68b70b8556e61540cf9a49779c3087b30e1771387cd4d72ba3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5db930e4b961532dd2491526849076f306b582a5ccb4ba9e5413b804d10f7ac8"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
