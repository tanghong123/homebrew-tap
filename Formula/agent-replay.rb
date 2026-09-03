class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.141.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0b08f6368dacb70718931c50f00662ba202c545421612d0bbe4f8219701dc0e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b8c57ffbaf214c8e99cd99b2800eda112291e0a916c95be2a72428ad025062be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41ece3c3c37fac3b046758fa65f0021c916cae7d28726c28089107b4a376f150"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "876a6bd7d4c1bfc5967f8f6a79c44b2ced1e890d4767e56554bc2a0b68bf691b"
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
