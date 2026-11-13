class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.519.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "54050fcc49b5ea0b31cb7a572d2fb571a3c2005b3b745c04fc63999ca20486c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1f8e98ed306bad2e39f584402d14f3f390d91b312f919f9df28a584a38739cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8291bbdc47f0da75f801baa3e75ee2aa75037fdfe6f06069f4f2f5879cc87a14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b86d3b23acfe8e671623798be118161a8ab9c1417fd590b546fc8e8e6251730"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
