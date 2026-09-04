class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.162.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c9b703c1448819e9116d7f7641fcc693ac8acdde1ba5b9db51a42fd3150aa2cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4674e1cd9f55f571bb28a7129f230e8784493d6b8f69aea6319e019242f4ae31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "081c1de7e15fcbc2e7430392cfeea688a273c97a5de3bf15a9f0471c17af70e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9131e7ff1775ff78f48c28ac3cbd529ebeaacbf1ecb498b871c4488b84962f5c"
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
