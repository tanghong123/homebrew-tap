class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.402.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "beaec122c2bc8a92b2e71e12c1a7d23ab6c9defca8e685cadf6897f4d1beb207"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c8ae2f901e0f1ab5e104190489c9f687f129abf2f97dc8f23bce126be0a97aad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bcb2ca618f0f2a66cf75ae36539ad3f8d372226c48f252c1c742049b8896ff32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "625d6cc8dc77de8095490476c523f02fe4a497f1435be013784005561d128b3f"
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
