class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.368.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c54ba984f8cfa02afd71eccf5b2fec7f6c47d8ff95a04f9dc48b5350c411a5ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "428781aa595bc918d719c3cb65a2640b53b47050c66d7e981291d083088692d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d3b03664b3ee24c2cdf058d807fff60b871f0ff3df32fb89d6bf6298aab9c31"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1762a7f0c0af94dcbea70335b9173914ce702f2bc7995e73e11b32260c3e78b"
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
