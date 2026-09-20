class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.286.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5611cbc36f2d181157cf588528f4c665b191436c7d7287d92aff225770f58911"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5640ef4eb02a2c7f3f6569d292f08d34d2e73048c2d63e59d6b1944584cc29d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f5f0deb9cc785b94b5740bab92455c4870ae7daf28030e290a87a58af2d0ee8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "450747b68c97e580698228c672b8cfefd14b0f919a143bee1a3354204f64b982"
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
