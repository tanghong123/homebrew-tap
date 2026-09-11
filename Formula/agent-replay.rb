class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.254.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ca385f34358a78419623f3f32928b357bc3c9390e6aaed0e7dae621627f3e7c6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "28242aa0fbb71f6c69d0700472d58940256d9e3165b5235a799164e6c3b906c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de0def5c836b108ecb73862867f0e510cb9ffe020a7a3a0362ad827a5d510426"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "caa0ff677f78ad448a3ebe1e643eef4f533be2d8f4c218078ec2f1eb032b1031"
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
