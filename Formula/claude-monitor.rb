class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5e2e493a2f3e01d5e914075be4674628511a530e23e7e1f36acb8fb83f79315a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "11c38ccd5db0051911856b64191c2deb9a9cf7517955ef377d448ec89c5ae7df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8320c5c73d066ab5246df0ab45ccd9b3dd5de4fd66c144ef26e28ef5daa1d87b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7f258167e4a825071d57baff7cf40a192bf7466c575ec2fd170b9abd4612704"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
