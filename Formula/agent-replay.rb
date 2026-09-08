class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.236.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f00d7a24a2f779281ab0c80285c5fd42ab1937970cdba111dde0ec6b3c834ad7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f327337f493241e8ceb3a1a4da990cc2f8f84a168368e5a8e778a740e2e984b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59199de751af079f1ef0f25bb48c5da09cc2f493ed812e5efcbea7585fedca23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4854c9d7b27a1bfcc6e39568fbb758e84c5290a6a6560533388936684acff45"
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
