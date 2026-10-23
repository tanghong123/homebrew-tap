class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.408.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ab7c4c25e56fcd97a74a044aae9e48ee6ba379654194df82a26684383436176a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "370e93b3ee0cc0e34c6776d618fd419b1c60009b9cecfc2b87e2d486c185f7a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0441326dc503d213eeac4f9b947c633713a2194ed8b5a7305d2f3fa85694c87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65b60fb20d4af01c2ee25ae66a9fc34e94e5016236ddfe380819c8d9d4d6462e"
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
