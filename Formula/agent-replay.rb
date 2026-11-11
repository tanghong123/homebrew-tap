class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.509.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ce0c725fe2ab8e9dffeec8ad6a8c27d19158ccf25f0561963a158a5f8bfa7047"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "65c478ab884013cdb80a19feb918f5b6f3db260a908cf8a0f0c652fb711718cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "89d59c0141d91b9b9dd74d8182d2f04bb966ff89d09c08752f29ba4a2585709c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b6a1574975354951738feef151c1aea723238d662b3b30f2e9ca1312d3eb1a1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
