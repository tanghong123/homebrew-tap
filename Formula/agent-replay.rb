class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.130.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "174c0994e5789d2d5bcc13f5d9c7ac179ec03c692e6bdeef58867a3e57f2e15f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fc0b9589dc0f5cb9eb7bda2ab4d215bed4f630243ba6ed2b14d24d2886de37a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1668d0e35838d6517d7f43fc95256ef65559065aa9ac4b7cad54c2934cc2491"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da4ff0f15918685d19d37d5ff8ae14646834c0fb1d9aa19c3f18b6b9f28143b3"
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
