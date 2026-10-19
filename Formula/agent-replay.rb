class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.394.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "780200137df091e02a7afefc10e6bddb0fc684592e434369cd61027e771071a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e90db97a01574d7d601635e29cc455ccefc3e6e6207d869682982fa7b9f8a1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5baec36e9d5f50605838381417c45f84b5bcbb0531797b0956551335396a580"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a9703190c267790b644bad6a463f56454981a5e17781936aa7b0da0aacc296d"
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
