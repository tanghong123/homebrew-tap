class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.133.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1517d473e8cbfd1bef752e8562af45855ba66e6615cebccd4d0308491dba303f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "82bd710a8e06d1a3f8f4f8f99edba471f8e19d2fc72f47cd128411b6b9bf29c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4cdbec4a43517e209b07ed6c884232b36a824903f0b838c39e129aca08a5d1a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5329e89d531d99e5deb21f7c788ef5a2eb6bed658247e26d543b6f3899a41c27"
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
