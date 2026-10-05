class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.347.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "58a2077d85008fe7676dc06cb9d19a7e409240c7cbf560f997fae5941a5eb99c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b7336325c69491380722ebfc61a73c7bb5ccc5ba473bee3bf1b1d8d21ac9052b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "494b580cc90aea6c74d1f34a3302e96de98bb913c828338f9c56e2eaec477631"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f8dd892329b3d97681bda2900084698bbd251e188083b8a74878fd62f9ae1f0"
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
