class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f968169103792d61e20d7b830bee7157392183ffbd313166b12d87075ef1d801"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "27d36a16d9e63df887fb778cd1669fe5a59792d90b790c48d7fe14d8b4918f47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e19cced5bdb3a497b8748485aede4e9ad990398894325e6647f59f8e612f778f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "915c31f610b46f502d4120a7271e61e4ab7883715e12ec2b6ff8e4ad9a2f9342"
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
