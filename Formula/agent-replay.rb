class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.410.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "247f4c172b06549c1360435cee2d610c980dfedefb24acb6c98cbc7ff6364b0c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8ec18f17044c969128b741cd975b6303c6690c7c908e61f4530c20b7d728bb5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20aca11393938cf1a44d985efbc0313e6f2ea12eddccce985de4c8ad74f0582f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7fa698dfed430d0330867772e9b77a61b2fba764f0bf249f89e704f031f288ea"
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
