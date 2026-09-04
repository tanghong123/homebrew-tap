class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.173.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7af1e146232a420f4e6823a675a746bc7dc110195a6e8fe83b887b76bb2d7d15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "471eceda72e8023d0d5231345e3566093b035700c8d0940adb90a7ef661ab08d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "898e5aae22793f36bd1049543dcf376e65e6eb062f33765e18813550334d99fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db0ac1fad066daa416ee6995c9f7d1bbe6d93c6507385b2edf93c94eff3b63c3"
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
