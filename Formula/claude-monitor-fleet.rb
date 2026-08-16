class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.83.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f8e312b695d6749cc117a7295288d2b831d9e79cd9a52c5a9d7a7342c7f4b4af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8ea8ef43591fb82a30df0ab709d11ce7ddcaa43564c58551724fe466d0731e2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b6bb61b35ae77ad5800c59b94fbd1e1ead248954f2be9ad071cd5762ed6939b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17a8d6da00830cc588481dc534020c9a3cff4aca15f3f4e739ec299a830deb70"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
