class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "edb513e6f270085a9da8071956e590a4140bc8c1c1d55fd6721f19017bf55d03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "da6e1d89cf26cd61ab30e78db3e4826b6016dd4063c28447f7b21543a2939d08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a7f0b9885dcb302d90beb95c489b1d5e401974d1d6279dbe515ed9ffefe580c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94c7e4b9b5f61ad96547514d28869d371f485e07266b4b3fba1930c9720e7242"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
