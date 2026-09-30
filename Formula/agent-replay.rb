class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.333.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6a4b39ce79956fb68baf44e7e23c3ac470dbc6b63218b873761c6af0927aa07d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bf0694c72b234a9062552350d07390d4fe268531e66f5fa9ea0cd5df3f6d3cb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "251d56d18b68a404226847c78763aad1db9ad7a3728682d47b90e52163f6e6db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "812f04ee688574fcdf4cf5d3baffb0e18da0163e75837c34adbf73edc90699eb"
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
