class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.54.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d94b941053e6a7275dfabdb7f74dfb29a8b6927c1bb09e877180723edf62172f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "846b279e1074fd31d3f37f9f63ca718b3896f273ca91858810b3b5888fa730fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "65405834ddc546a64eb450f774cb9a2edc7437a8eb56ce9dfe18ef98fe24484e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a8d7f7c9e768bc197ae69e6b92364887e0d18b15403e618515dac90fe7b1c09"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
