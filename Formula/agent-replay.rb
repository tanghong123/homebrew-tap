class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.238.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "507448984e7cc2fb24f66895beb0af5f0c63a7d69e3b1bc0157a6a1938af5d05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fdf2d2139d0fab3a29c14650fc8ecde552a6915ca7df36106380e32b483f4860"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3bd7a48af09afd26a97965f27fc61136f0861c0d3ed64a3db16b56a60c4c5816"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6112412542193e855415467cb9cfe9a4e80db4011d0fc07cedf0170a8705d94"
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
