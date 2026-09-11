class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.256.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "071964201685a8243afe96123afc2fc885309548a9e5cf8cad86377326dc59ce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2544a4006f7333e81d49f471fa7d4deb2a2dbdd6d9205c92bfaafdcc2c1cf64a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7546d04a4f9e4bb6186cfae5215cb8e102c8c64c202801c624adcc8f403fbcb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce175afc2100032ddfdc8123320542e21b31d0e359c6899b795e08feba216a66"
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
