class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4ae0c1a98aeee2b7ad82398963374cb6569dcbc5bb77e5ac03c76ad732e85ca3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d4fd7b517a605147d4846d64813efced1c6a525730a8dc809ff6a1a2a70d2253"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "898db678905546e4ec358a45d7ff43468327d7aa500ac1031f450f65ca0beb11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d573158c9dc468d136229d7e703d3a1a33931b4896dd3978edb5947b427584ab"
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
