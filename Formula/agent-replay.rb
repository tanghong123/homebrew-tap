class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.403.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e35c94d0450e1c8ea9de49f1efd4d96b4f27bcac8ca9a3c84170a7f566d93b5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b9eda1c7db5f8f3e82bef4d17aaf16b6ab90b58e89c9b80ab2cc9948a612ed4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb63ee5226aa4ea2ab63f67149a3402ddbdd3829431976dbec713ac17c553dc1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b37f698537bc518f1356adfd6c50121f4e8a603229e1bf136efbc6979016227"
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
