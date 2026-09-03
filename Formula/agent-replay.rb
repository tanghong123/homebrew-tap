class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.137.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "18bd53b19be809a98d88dd11fc74bb47f7650f196bfe0ac34ba47cf3e571e50d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "99422c37ea2a79dc5d643b2607f2b8b5806e00eaa3e67665a5126ad321710fc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af57f43550c1dedf9ed7a6d7c9830d31902ecf453b28494a69d1fe910fbec491"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cbdab754e88f9abd3057358ca9ed1abe34a71ef66a4a04cfedd52c082aa1922"
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
