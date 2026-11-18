class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.531.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e509d55d1de5a45806c173568eba9ee33c9c90f7f03bf5e614cccbc77a20c9e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "35ae236d3fdc0e69e81a1983bef3209b32f58b62b9360dd862b241f1063c699c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6750198bfe24709f2d58e759bbc1ec3b253ef3171604c136ccd2eb4f40047718"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8f96e9c1c5935d4968188b3fec220ea67133540df98eac3aaec898083e83fee"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
