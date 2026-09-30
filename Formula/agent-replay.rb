class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.337.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "794e2b818f523e93fd104659428bb68f78efc269d16e4c7e14fcfe6a0bee6ff9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3abf3adeed6ed6afe56e032e4d1d9d14fda556b738da0ff6b29c507969a35409"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5fec4bdb42dc273abdf3c9f1ad2a7280514590eac687e63dc6842dd9e83875b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b14d826e18ee1522223f26009d6b9f72609fdcd68681855ff5b2ce4f47847ff"
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
