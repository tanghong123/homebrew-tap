class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.163.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "61261c2eb87fd91f80efa8042ce6badc628f3b8435ca0cec02210be1fb7339ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "65936137ae5a05ce3ecbc065b6aa2084b30017bbb1174a391aa083004434b76f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee887d18a0a4b011ce901e3e51891c80f1023c3dc0b647b06b43d33794a41f6c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "772cf29c492004ffde6a1ef95bec70a6bba52b476d269b45628f097141c9b4d2"
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
