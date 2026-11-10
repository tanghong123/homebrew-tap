class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.500.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c268e48563c880906520f565cc788cb5cf35ebe6c1a08b63efb03a978882b221"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cad8633ff241cad52c12aa5a14a8fdba3b2cf89ba933f314d03e8e243cedf3c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d64f67f11c77f6c6a9a9faade43af56485ebb95cccca228c38dab59d3cde772"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e27e572aa7dce590fb022a1e60d067f12dc33b4a471723c80b0d58daef98c921"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
