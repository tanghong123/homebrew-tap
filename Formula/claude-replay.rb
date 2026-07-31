class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.25.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b91975098c208cca8be3aaed279879576886e45af1a7c7e1be426506fd31fc05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9989eb20d3c1455b4a892e0f7250880df4bc1310940338ef62e73a32462312d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc6a61829fb24674811d3bad18b1e01efb53d3d9bd632f309789b7a08daafac8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "337979a781b9e0b787954697bda3a0452daa2008aa747e6b81c3e1748cf5008f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
