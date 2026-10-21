class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.401.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "aeba1cb42c61ea50eeccd6ed3a8d4e6d02ffa309ea5d3e2829d53301faabfedb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b13fa89fb2ac9770e647226d6760476b975355294a26c6f1f6d41a133adc4128"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d1159084ff993ad62600eec2cf3c0517b637f1c3f9d606dfea03f59841a31b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "373ed6750d0e1d782447c5de40c65d2b02dda2aab2cd07470e62fc3385d2043e"
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
