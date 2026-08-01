class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.28.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1cbefadf2f82239d0bb6c722bc8ff4fb34ff75f79dbde2da6f84a34bbe6cc6e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5bc1b0cfe501b6ff8b9943c2cff4dd21cbb193aa329aa157b20c127ca7d13f29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e980255bc51fc255c9c8e0b00de554ccec540470c799c64314f8354da2b45412"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "106570bcca5baf681775aeac497c8881f8ba57737b0e36f5425576385b85acfa"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
