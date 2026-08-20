class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "41bfb72de6ee6d3fa41acfec468e8855288c25062b6141e01b99d78d4fac230d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "81488f70f1917271ea6209d6415e60c8da95275ae50fd664826a5dd5c04892be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48869335cf4773ac359241ef1effd8d8978873b0952d591ebc290c6aef710a62"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c15b54e8745cf157ee68045e107b09c2b272021f148dd4bac91ab73658002be4"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
