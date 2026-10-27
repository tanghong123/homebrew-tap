class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.435.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d2cc54a80b7a8d7d64de9b4ab5c4c35592851dc2b676bd60fff0e7e44aaa3d61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "38a5b9ce00aa97e4b7956fa013f0db77d6da083a2942f106765c8568119acc71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60b5e9f8c699147375a95bc5e63128ce9a6418e1f6b460c5f2fbfafa27b367c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3b8ac78e14c35f29dcaf7f22e0ef799e669a564d1285d646ced44391ede735f"
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
