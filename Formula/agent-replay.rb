class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.215.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2f63f5a7f55f1feff27af088a608bbd5f0b7303591ebe2f292e5ed2889cf0e20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "444b0ccdf6839c4cf8c2e50336ecadfc6d99009d4962d66a5b8891bc8925ebb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23c633c2c433087251ce50eef5c761d370bf5160c62ca6d4373a19ef42897abf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb582d5bf599c9eeab5783fc24c9deb098d2d12090e10901af1ff1c93108d472"
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
