class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.3.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "28e3fb18bbc304ca4b2aca8ab5d69984bb3cca3b4507e8b582639edc895d1a68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b242c9ec2ac41564f3459f3e53033edf8296e64838635017b9768d16c68c5732"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "412c4288ea45d6047118def0415efaa0a1313d897c711690c17bdfdb1a5d8617"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eaab98eb67c3d054413d0e92c8720887476cc269cc0e4363d912d7353e94f6ea"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
