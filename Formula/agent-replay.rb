class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.478.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b8fdc13e8cf352817e82d746afd45800ca044bcc63877fc9f984bfad8c4db341"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "79be0380fcb17991102d46579b21954188eb6618872906b5ee6ffca74cd25f4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c86841b3bb064509e3d8507e4ee9b2ed2d47c3e18a456dc737b52b366e8326d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a55b66d1ec2a00e17cc81b4d6c4240c86bc7b33b6fb9e5d668e529233e596921"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
