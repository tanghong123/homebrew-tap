class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.3.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.5/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "dd1baa7c75d9e242772fae40ee8219ef3f5a74ec9b367de9d1222992646b0740"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.5/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cd5c8475477a6728a98cec6b3de767e5c9f385b948d5c9a670dccd73ba3dfe7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.5/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "acd63064929ac7085f99398e3789f8eee5f9623e46848fe510dc05f0ad88a29c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.5/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "996662e554aea5a2d9eaed2f84b8579c230c5ac2230d20d6f0aeff8924e95350"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
