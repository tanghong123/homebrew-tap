class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a4dd8cb27f9bd83222ada8276da5c07088c41c1888357025a46c8a5b17598308"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "108c666e08dba2dff445df3a235203f42c09a72b1eb1332a85ac79bce59fa8a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "297e231a42f84d266636983c3b74aa1e00f6f70c92f0d8990573ac20ed831e6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1e38317cacfc574f51bad6cf1be91865b20b02cf6ea55721b68b0b64d30dbb9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
