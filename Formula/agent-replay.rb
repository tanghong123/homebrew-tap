class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.121.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9e3aac0e364523b9bb922fd25086a4ab8e57eba588da04043255b91833f13322"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4880c64be92bc1dea52d2abab9c90485f6bb9ae95d1946ac60551e9d093be021"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04efc1ce6ab88fbb8b9c98e0cf88e617759848d08715b16860a5587a65a43ae4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2103e488e13d3b4fff65e5e7a023a2f37f778353b5776ec46b2326daaefcf3e7"
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
