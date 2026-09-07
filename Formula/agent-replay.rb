class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.221.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1c8c03eacb6fd6a010e56102aa2a00c1ebd24d24760694fe8190e61e6a9877bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e32f703c0d1bb056a187c325a3ae08b10d3b15d7d454a7eba75574d6e1d4182d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a14248606b36a77c1590ebb09ad65276291aeea34a95ebcb5931855ce622776"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1493c10146de710feecc37482386925f331933ff8bebd96f104c8decf3251cae"
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
