class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.64.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bba45b903f158391c2ffb17be001319c3dcf9c49764876853c35cca131a8364f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a691a6585809e2d5088fa510f667186d8d8638a761335fa2a3fc02c55a9e893a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c30aa8330001c452f66e7761591612b810be055435c0ae26812cf432f97f4bd4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c531a42362f081bbe3f18f4426c6fcfbe1d4b7095b8d3a4a3970689f8393a0b"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
