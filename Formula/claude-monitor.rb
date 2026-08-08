class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "89a96598c4da7801f8a19653f22c95118c1129bd86aa1faa2a7d9e1182240605"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "12fca6515eaf20bde41d64dd83ecbf35064e2520904f6e3274e2be315ca854b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b138f04eed264d9a4a6e4b659c1a91f417fe28b9e810c736fd489aa6757ed72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a813b97efc77cb0cde534c26e5dc830e01998c06e8264b38b53948801d0f8d09"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
