class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.208.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a1e9a1ce0a6ad5ec6e9fd65fb797caa21759360b3d7cd044b3fb371a10a28ff5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e8a7f11882ea9961fc144f67681105e91b5d9973305877d78f508f5a3df5b755"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "156183f165a388b1e7ef3e618de961fb169b0fb2e86607160ee18a3328332c05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c01668949dce49f0375976537cb9f01c5c7ab2c0dc431e6be13e862d64d8b348"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
