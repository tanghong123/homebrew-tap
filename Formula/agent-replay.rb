class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "aafac54127119c79a7d976caaf407c24f63892b0e9e1665a276c82160073b4a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "36f5a16b65ec73e465434fb9a3a5059cdcb70f476221c9489c5e8657fb94a939"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "257201f6d8a252ae41b06f74de14d0f4c378887b226d390e667182043aac5825"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a2b2c7d4f6c21d9b60394ed45bb12618f41068cc2da8c3555843354519f834dc"
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
