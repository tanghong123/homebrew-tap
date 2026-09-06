class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.209.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "294e7f524a68b9ae21ef145a859911579eab81146c0aca669bbb9b048f5aa72b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "08e72ad43a785e943700c9718568d4cc67300976a85da88a9919e54f80d7ae7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc48bf987c87f40a5a6fe2dfd6b72d3d6ac77153cdb81638f9ea988a0c008794"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24b645bf530bf7d9ba04e5f7843ea09a8660a20d487cef9bd5bbe6c394bcdf35"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
