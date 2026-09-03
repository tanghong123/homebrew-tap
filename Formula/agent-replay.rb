class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.138.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5c391b863fd61c08c677c4a8733528685f8d17acea1e27e2fbdc3aa2d312cb55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0e2ae5c67481ee5233d11778ffe060810f56b00422579cb62f0241462618ce60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "062ded4aacd2057679be3cfa8880ff1ca935fd5ae1666bb4c1e1c45352496ed9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "844610d2dc6bef97ce9ba6be503af2c820a2deca41834f7e6392ed4ab1e84875"
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
