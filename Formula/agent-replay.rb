class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.359.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a7d35289984077c722fcc98c43202a3764029dc168cd3c264e5213cae47d4a27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "54793f839e58a6aa1b5c2f053ee3a796a9030f52a5afb063efa838bf263a6495"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ed87f6848a83a22a7b6b90057d43173f173c4ce694dd42bc91b31da86042283"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "56020394eab095f81d852a84aa8a77162ff431d9be8f3b381562e30fba0c16b5"
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
