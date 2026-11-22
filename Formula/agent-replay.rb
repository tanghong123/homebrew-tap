class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.551.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2ec5c837e30b4c9e7e44b15110a05910af11b9cb78a0f660affb1e6b9f9ad26b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1adcc8d396e309430eab679922b78c3cc322e273fda161844aae908daf573f76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f158fd73408ec03d5ba5cf857e1a777aafdc144efb46a8da68b1c37d46e28cd3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf245a9eca7e0f07ec16db92cbe66909d6c785316cd1e19dd097925f73304bb3"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
