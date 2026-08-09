class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0921940bd243468754725bd8a359911ad1a2f96b877e22ad7e61d62c0f9c1f3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fc3044ec8b1fb61fe782b5cb1c94512e351a281f80b36a995acd425d0182eec6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "499fa7a171af3efc5065d7de99ccf1419c07c050ac1cacc01af5a577afadd746"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e42cd071c60c83c296ab45d8dd4c3eeca28a995a115704470cbd27790a739a7"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
