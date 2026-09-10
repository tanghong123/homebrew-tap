class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.246.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4029ccbab26bcdc2611941ef4d81d3d57c001b3708c14d284bebc3e4b09cfba0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5fd171f1a1c1a2583d1b44505dde53f7e1d729b8bffaf3c4d3a125f1d7aedf7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b954c456b003e0196a69d3a143c824868cf5d3c0b23b3dcfa69f83650788da66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fd95c0cc650967b672721049148b74c84089535304783fffed52441e2baa164"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
