class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.10"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9c40663c4cc41b382a166b75ca0712f1eb4329566e7f8167a8002934731c15c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3af3aada4312b87f792b1f1a23fb514ce24c6c2538ecaa365709082e8bac25e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "527734cb7ccc490eeecbe271cb1aaa29cf91906c2241455e0bc595b4375155b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a513dd1ad2262e80efab479ad54378d7ed58b595c626721e6da036b06c5473a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
