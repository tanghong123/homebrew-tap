class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.489.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bd3d1bc89dec26b0c2e1589de204a2242d25b439b1b0f335937e10c11d16b31a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cc35e6c8cd40ef2e6ad829f1a6b34e057466f379e0dad490cdd827936ad6b540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f60731153c7d9511107577609c901f7a2a18577b407295c1fcadb45ba84ec391"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cada5c6ea65ebb17a8e17108f599b4ea5a31d3e1ecb32fb73e75a695dbcf203"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
