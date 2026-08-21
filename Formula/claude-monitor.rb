class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e94e87166bda7a2390c91e13fa896174d1091e12b2ee05fd9a73a4525773eeea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8dd862c42395159b613cecd14ab452a6a73b6635b176a84dd634ecdadbfb017b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e141fe64b8a20e069a4594a8594adf56886a893c32f1fc015d17bde146ac5020"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d9fb31a2baac96db98768a6368749dd807d5af3f1e2e182852bd6084bee2409"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
