class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.360.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d4cf1e3cac216941388efa1846aa6ae1a9188c823b9d7ff4b084f85c6b7f2e8b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f61b1c194d65b7b8bfbf868e842df4c5b52cda192eae4c055ca28b85798dc476"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38864830d82d88fddd180b8905b59cea3c097166b293c5ee3c4399e85466ead6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6c107c38567c2b17141f142354d61ebc2290139cd6bd869c5b20dc2f78f35cb"
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
