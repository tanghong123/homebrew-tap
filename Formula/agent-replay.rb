class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.444.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8d098c2df3c44778f0be43e005d0157b29d05c38b896b726be22fffc37909270"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8d1cc1fb16772d26b40d015d74ecdd6b4661d8b6c3e80e9b8b5cc3356e840595"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f340f15a0dac4b49195021e923487d36bb5dbbd513f50f6fa17152f097a5afec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e719e7faf26f2a6a6e36c386fba3c0741049d9b7ee1a6725522f8557cb72a6d"
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
