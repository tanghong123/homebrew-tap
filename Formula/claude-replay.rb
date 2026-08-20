class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f9f115b4e1177694d80823a5a31c17a9a0711b854ab86f9369e944e3f7e20520"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f9e91429202a3edd40fb671f64594100112e2253491d98c3c197c11409aba9d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3dda03f064d1c26109af44319b6106212b62051d24ccb75dac2115fb4b61016"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15f9835c6b0515bd5ae3081c96fbd3caa275aaf082fb0fd4a649a781c4b02a8d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
