class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f87d93fcb10cb52ce427f9cde97e35031720dabe0093e8658298d51d09defd83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "39f7d0eb765bb3e81710792b4cead66b3c6469c3cd796976e557eec04148809b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ccecd1e8075370e1b8f4cc74315492b247bf2f118687480e0f5c986b3361f3ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a9073814fd54a41e62388cfd481270170f58e88551e894bdbc444011f9f8342"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
