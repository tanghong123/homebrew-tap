class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "791f9e47cc28762ef296c42eea7783ae0cee2dfab823e9fe359accbcab967621"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "aca40e0701b66b664c4362db0015e0e638aadbdce9b3b3a47ea4f52d95a63dc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2db44845712797cc6618a9c6d10c70f8cb25dbc6be1e07c7e64d8ea45b437fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5216147ef50fca9f6e2204b22e84c68c774abb83f40a952b666a7d4c1e9096e"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
