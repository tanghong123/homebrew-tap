class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.16.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "32ff43f47922c87502588b309888364eee20913c9c50440b8bf3796e88318e3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b2ce70fbc7a97390344981e46d06e735cece67901bedbaf75b14ba0aee198a20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "34284d6e87fbd00796815d0412147c4d6b14622f9a88838bd085facc0a58424e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b0a42a899afc13a214373212da4386eb7bc81bf3c54a74815bfb0e429026da5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
