class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.441.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6d50e0922e740a2f5fa57980e64c0e423ce4173a367573d2529378b55b969291"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7614b602d20f7322a5057058254785243f010e061be0c2a849e635ebf8de66dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e5ba1efdf5e92589aff33e44579e9d1146617db5c70d3cf640d03da06995e92"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "315d087f298e9b6f90729af676f151208343d97450a0f768832efaeec806c9ec"
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
