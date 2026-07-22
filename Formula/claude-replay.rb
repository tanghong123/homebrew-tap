class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.10.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "476ca8aca1fe0ed72a17a53d3476c3798accebfe58a1b0fa03e3ea5576ab4987"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c69210e32fe19d6c6d8ebad3e8bef297936e77012e4f0d6c0e79f057adc85dee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c5267d203947eb147f6c05aa4e18e3d0dce6415aa3e84e3a698e1917ba5fa9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.10.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1580ac31389266dbf2569b0d2c27583ab0a03c68889a3069b2ce6eaa4580cd5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
