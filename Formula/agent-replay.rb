class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.331.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f5723226223f7f5b3c8a060db48585e06971b1bd59e16e602f21e080fbb8668b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b9d294dee6cd79e868ba664137683c714163f1f0b86e73e2710775fa1b3545f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8c585c048289278956afd119d632d9cb074fb67489925458b54d7ec2ac47599"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf86603e0f84fec5f48867f88446400f507f727523705b7213b92022b86ee9d3"
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
