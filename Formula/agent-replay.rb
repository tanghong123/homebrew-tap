class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.117.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "66e27309420b671fde99d98f9484b6ab26092b80f71d451e874792d9dc5b3a81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ba2a76413796e0c4f1d644537903769bf79b13e5caa60c2fed4c8c428a447e9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b048aba998b5b00a0003489c2013d424b2630eee4ccf119468affe730dd8a8d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a83f1cc8943a46550bfa431d34d0b0bb187ea31893b8dcaab03c040b992c6d2d"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
