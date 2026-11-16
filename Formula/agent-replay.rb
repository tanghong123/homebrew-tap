class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.528.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ee53aef420a1d5ee49c4f84998de61a9ea37771563c17bb89e9eee930a91ffa2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "95571e244cff257863649c9e5946945c1760cece0ccd81099debc22dd3ba0d88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f7cf9d646ded7bde97ebcadda24cf6ccca0276c5b5d04b881a49db6b06d5702a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88900b1e5a60ce3254911b99042fc0bf493e3bd18be98877cf1229b5c0f9d0a8"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
