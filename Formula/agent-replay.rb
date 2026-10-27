class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.431.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ac0c91c9a14cfb26ccadd1b55b91de84986b0505dc67ca778f13032fc2343222"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "17b895f0edf9eecc93fbbf826cfb4ad6bb7dd17c05c2aa620eedb3568c494d3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aece6d120f16200d0d5e7f10f0f6ec08d5c2cd21915f43b71b839cde1f5533ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb291150bfdbd6f0d86e942b563a4263436ad9df2e8de65457a35c5e8ad3459f"
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
