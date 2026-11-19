class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.540.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fada128d336240d64a533a4cd14b1714258439e97fb9a3c06ff3595e730e7cfb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ea4c4f294d616ef5b21d8a34b1899629c59f30922e0e6b89267eaae35cb70693"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c86e2cfd0e791f079b395a9b1948a6769f828a859b310c26629908d8882a6628"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6000fe2bfd42be602095e58dbf2edaad2122eb0de301474fa8a0d6f237ce3d3c"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
