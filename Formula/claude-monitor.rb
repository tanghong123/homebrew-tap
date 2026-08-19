class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "62829a66fa758fb76302d1f9ac05b27678fadac268e3b9c3bfd99a8758830622"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "117e8a5cedc24fad3806eb7a5f0046515d8245392a3960c695bf08db3fd28440"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02a9bdb6bc4ea8277e8d9245ad72c4d6a4c916a2c5aceb441fa5a7c44e775aea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfb391bff17d03850f27fe808cf25678c7c01dc76078bb0d29528fcd77678314"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
