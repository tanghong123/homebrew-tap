class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cbb5ed82f8a7367ed90d5365dcc0d379d43578822349f5cebdc0c883559c2f46"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f4f5e6e259fa953107d998cd85b0125d625d73a424c161d752de383b4d8fd86b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "147ce2cd658acf54a96d32e551d6f64510bb7ec1c029425d492815836604db24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a4432387f7421cd0222f86b480a4f674d21c61c696a7079fa55c650f5d2cd38"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
