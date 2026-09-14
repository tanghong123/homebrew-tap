class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.270.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ee6c574c85108f4f20d49c69772a6fd9cb1f04601f433abd77ca30ae1b637448"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "240031ee03842084da84f6e795a3f7a5c6b716f7a8f7956c7210a7b64d7b58ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6a74d81f2df4ed2b9a2e396961c280e26bd0ebd57f1ddebbc9de3d7b26b9eb0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "25e46fdca208fb7a2bd54db195cead8156ac1bf04b66e1a8cb5f8d1d120d6aed"
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
