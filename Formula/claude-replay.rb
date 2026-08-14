class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3a182c95b11ea6e1866693284f0a655fbd8897da4bef966f130b9c02aa9a7306"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "29914d4d661efc189e6af00b6830de9affe4d6e2780d1e5a060634bdf8bd7514"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a85b0c8ade2c62c3fcd244e10e47812330583dd882b491924efd2b7e07ac9c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad424462f5aaf417e01c134c3f1510695633f323f4fde3db306f7c4173ba54c8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
