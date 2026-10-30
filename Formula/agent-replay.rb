class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.455.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "429f73ff3fc587bf45e2c74b2158e1878eb0110ff27ff6dda600ac65473ef9df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8db55606077ddb8f7bac49e2d14f1eb18c0ea65a335088b781a26b15be6e4b6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5788da43b4515da2242fe15ea455bbf25cf8e5a74affc547ed96894ff755f55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1143e432bbd9477a1500637ebdfefa1ecab8cc074ee4be4505ef24dabbf1ad0a"
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
