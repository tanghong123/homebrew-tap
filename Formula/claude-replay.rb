class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.5.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "83b5ff07b5fe9a3d78667ffdebcd6677cb71771b3e676aeb71eb0f33870923d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c06d9df0023e7dae435f41117542cf723fca96e15b2160faaaec815833a316b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aaeae96046a3cf85a7b8cdbf1aa1537d54dea2713b234a1e1f9b2417420f3969"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6195fe69325e60576091f813ae1cf821530e76f0b3df58706d33bb5c58d221c5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
