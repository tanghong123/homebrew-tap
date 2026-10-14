class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.376.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "40171d7adc615f68d99f23d540db789faece05a3d8d39996e8e7242b571422a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ee93bec62c4495983333c94624011de4f735e954dc1d13be7bbdb39d2c2c2e82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d510c24161f317017dc4c5a8f9d70d09afa0d522a72ae957634cab88e4d36af5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32a95a25164911fd09ce9f6e8aeaa24c8394368e48030103157c2dac69e01ad3"
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
