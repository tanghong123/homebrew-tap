class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.332.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a6c0b9eba6c363d7efcbf26ba95ac389be6d0f9877bb2fbc25d359afed710a0c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "941c71f0773de11291e28327dc3fbd953d42cd3f65576af95f749df783108880"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c73066e97e8e195a8889b83a7bf7a6c8209f5d9760f14fc19543d2552f602a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b50891b2bfe56eabd95afda6f2fb9adfa7d1c7063399633f3fd55b38bce390e3"
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
