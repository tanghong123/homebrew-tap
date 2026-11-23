class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.556.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "84b6692e0e604ebd0a8a34a146245e57861510628754a9eb6c2dca1095ad435d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b7bb135c03247c1f05e0c2ea10827398c7ccbbef907c888d07e0ec5f3eabda83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6a8e4f9207344d1e5df4535b57ecc2fd3667ccce35f88e0e70ae74d6f51fb584"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8a7b2fd8903fe46dd7d50482d1fa84457eaf4a858928ba213f0ad3e59a097f1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
