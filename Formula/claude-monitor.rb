class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "452bfc458f7cef3eb7a008f48e6a32deef6922629ec77436492d89b9c9ba2363"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a2e121dbae7e4c44770ec3d7547a906243ba1115ff0b42ad0efc72be5c915dc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af820784068622c558257e1ee8fc049faa90ed4af2f0139e795a6d37c1d129f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0168754c3f1c7f0ac61063c92f9019b823e8b5842979da827526a364f60384d4"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
