class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.161.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d702415cf63d32fdf346db59db80c1c1d62bbdc6c7d76d67ff461dbe88c1ded5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8f27c3a8c144b8a73e5309c294cd8febb424c2c46bbeb04164814aa7ef0b5fc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a18d3f143240d56bb3f8752981271fef53757a51c9f42c9c5c06cf96029dd78"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "132f9affdf36dc85d0d3a8898b5447eaed16665430e5ec57a4a288ba58459c8e"
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
