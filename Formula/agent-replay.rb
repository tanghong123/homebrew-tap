class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.193.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "785b84bbec89e8403414a0a26f981badbcd7bb5e424b8eb77d0511569c584476"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c0dea96e893772b02bf7991702d47cb079c657a7e0cfda75a7e20daa2b86b03f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbeebc7c81f62c3f53b194f739b67c50790b5d225b1e924f5cf4e6567ee5fdc7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86afc7bc134e7541e456efa6536b0580f32f796c6fe5879105744f9c2517f254"
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
