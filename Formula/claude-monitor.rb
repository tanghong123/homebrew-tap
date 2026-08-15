class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "340f347571ee94d768f3584a0ab1571646f523dc9a2bc6f0dcdb50aa57ac6730"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "32debd09e449dda186cc78002c2b8755f75db9f675ccea2b292ae667f53dbd6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a00f872fe64ffe96db4ac179cc5060da5f05d4eb9d20c5300c46d559d116e38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1344055daec9720977dc381515d81cf1ce428bf79fab746aa037e7c630b4b13a"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
