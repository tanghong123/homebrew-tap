class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.37.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e138d8643d32547f30601e61c2dd1450ef16e09ec1dfc9a5d672375b3640e202"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cbfc46eb32716172b5875df2ed4e2db8649ae85886a85b3d3cde58d302864b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "449219e14f7c8d8478f4db956b55078cfaf376642b0509a4a53c037022898656"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7af723d30028a74bb38bdf38d2d948553c5f720268335ca67afa84264f38a190"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
