class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.535.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ae34aafe36093c2bc4e7330663e5b20a31a4d37e83e27753bd66bb3d30345774"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "67562b659cc66b5f694ae5ea62a5347f5f0b1025081678797d1b72013ce6590f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c1c1c176d1b047e3764b12c1f2b1d5e308cb94727e5bf5ecc3d795e27af012d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df02de09537c7c82537eb5841dcecf759a38c7352110c00a712113d60640c393"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
