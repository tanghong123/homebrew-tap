class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.118.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "96d4aafc64e660ee73428a701521ee9d73623f87ce7c033d0a34da6fd0479587"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "788fe93a366c5b5c390a4da0c01b3ff57418827b09f2bbb6615b942032969b45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee22b925041aff884cd38cf76ab6a1f3822718674fb86dff4612b2c8b35591af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ba4a63f3375015e2c65b2e49f24023c9958624d76a9f1ca674eead31370d9ce"
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
