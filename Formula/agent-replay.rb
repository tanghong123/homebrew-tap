class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.242.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6f2c923223376f61dafad3105c19f0a411ce29b8386b0a03e71817358ac0a72d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "372f520422345b3931383562a8c84cfe8675609fd544a9b5aadec6c8d6547c07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "598d9a33738dd3bb16f8cfb1e1f4cbc2d8ee76b4420b3ed117e260ac84a22a6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d504f0f1412618cd9580e660f1a0c2477c4a22b6085295e74059f6e56a85a1f6"
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
