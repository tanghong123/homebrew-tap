class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.54.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "220e97fd319589ec1c78b4f680175a01ceffcc146bbebf7b20a08d21a7301bf4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2e5a8cb5e9cccecd33e665e395851785b486805fd1a392f0a8195ffa1e1060f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92580e0955afb81ee9dd0c66bdf656772df2618744937607cb5ba8a49dfddb72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "848dc565ce5f5ddcd74958b706b0119a7fe1ab55d9b7b3a9309619e796809014"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
