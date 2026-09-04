class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.169.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4e2082f9a4fd5fba05b7fb1a56e60f41ce92d98592e729d76ecaf8b694a542ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4a7eb7f63a80fe2f65541286f7e0ec96756c6dcd41f94758ad17dcb6a41dfdde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "980b84ceb14b0faa359b57d45a95d6b16628b60061cbacd45c5f8e983be8c4ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "499ff33592123b7cb811be319fbf821b79b31483a10dd5b0fe5721d693ffbe01"
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
