class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.341.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "82449dd52218a67a060e44ba0f8915cb86439942bc40981f3565d3514b3134ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "851a2020ca3b7c304eb384ce79773285d7759f7eda111ba753062474acfaa4d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c056f3d892efc64fd2edb26797a53c6bee41484133898733ab8eb402a8d9acd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43ad281de8855eb4a9881e329bead091e140212974e93d45f7559620a706708d"
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
