class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.11"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "10efcd94f5a9325966cb86c0ef0a06d5231ad8b878285762182d29b619e3401c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cfe5b32182324685bfd42d4ddbbe8f7ff562bfbee849e41bb33b3f2611b442d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "adb1f502518e5edda367bcac23f3419be1af59337497c290c09425c7db29af3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b83e5e9eb5a37ff40272754dce308c9a90dc1a8cce5a2e3ea527d1413e21cc1"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
