class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.290.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "715b4ce79c20367d21a9061513c2600bb5039dd9829d353570a55e8701c9376a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "985e3927a86f661ecd86874ce0fc95691e9ac0e30e6ea81200e666f844b56fc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd67bedb0308cc7b22f07c31600ee3d7764212993f8b25d8cf1b378464a60ce8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53e83f774a854f8c2a91775cb1003895b535d75d0ca4d17b2754ffa32e01afd1"
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
