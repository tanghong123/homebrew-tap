class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.60.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8f90c3a884a5e4e2a126444400923900adcb5756ba4977b5a176a9c98fa87ff2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2ccf996aa419f7463a2db617fa3e160201fdaecafb1553717a7ed46cf7907173"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5bfc0e88bcfbd2b593178c235c52e02eebbc7bfd2e4699ffbdf214cd3c9b52e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "287648931224352fa4473ef4ad8fd5b08b59b6a1c236f2d09724a08e3bb04365"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
