class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.265.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "74a0d78f545c5350764984c907b7ec8b5659459bd90601d053249612fede05d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1fd421c6cd3f1de236c2907dbc4a5be6ac4ad690ba2640b51e52b8fed2eb136d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cba28249dacce3b06541cb5b26442374176eed9ac0780cd3c9243b3fc80d5c40"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ed290642b243381a87f27fb7e14d272ecdea189058cb113d68fefcfec754be8"
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
