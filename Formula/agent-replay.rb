class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.218.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7051066b6bc06eb71d7b6907f8c60b3a12748b424b39ec3bb0b07b93ecc9df0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6a6b0ca2ab3af8f14270aa7f16bcdd950d0a8b3af6bd09b02c6b6a0ea9923f7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "651d108e731b6258c023e8913eb0c2c7a49669344cefb7f4c4ebeaedb377fc60"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e46439eb4e37686798b26d6dad535c5bd051382ec1968c131de6eaf01274a4a"
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
