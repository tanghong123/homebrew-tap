class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.17"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fde4338402590d4092ed8b25dbd229d98044aaf0d5fccafdc106b3fd31611789"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9e6bd8cb6c74766416e3a8eac299c667a3ef3a1cc2fab4b98964b9ffce36b711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f275db6182c19731ec289a31f2f5038da6c39cdc698443123759a03aea7f31d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9ee6170667146c70ba538d63dbccfecb1183c37c593d13b8f9bf35eee96a997"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
