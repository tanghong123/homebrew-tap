class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "590568d86eeec20b83c04997d399d4c7e0fd5aa026754cd0cb3ed97134b5e67e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4a69df719ffdec926be2dee3d51d7a30c7a451bf4ba7f84f7eb58c12183ba6ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ab27021bf4d45416b8192e985c0b21f040cdad7efc138f801dba321ac7f8685"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b300e994311f0e111f459366fb1604d435b27253ca8523d729ba8c425956c3f2"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
