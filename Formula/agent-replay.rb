class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.578.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4f484511a7905403d99389ef5bfd07a060a62062aea3c1301716a5771a9168d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "91a3c2439fb8a96d32e7ea21747c9e325f796f7bf2dc3879a8049ec1d043b290"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf6121aab6cdbcf1fc1c6dd57374594abac8245ee6451ef612d801d3392a2a90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c3ddb46b69819eba5c0612b914c63260a02c2df43944a06ba190c10ae77658dd"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
