class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.202.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "373f92289579706078593bc0cb1a26f387ac6c1625fea68b4b91a10df525e606"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c788a71373753057ed5c39f0c9967a607ff80fb6e0897378f509259339763a7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4cd647bf7cf9977a2761ae2de99212c26b8e7ba43f1deaafa0bb6bdd8fb0ba9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ded65945e358cd5d7206d1ca9eca1c9e71cd68871eddc6b8f94e3c26907462d"
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
