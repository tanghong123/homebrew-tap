class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.532.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cd58a71256ff44e24ddbb77b5967eec8af7280614d63c06886f151adae1c3208"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "abf1cc60f71e7768e528dace07a0363623f2c4c999b13ded25e22bc53cb76d15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "351d732d87aa0c4c85cd7202501725ee5ff08f16e548442289b4ea82de873319"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08c849abcda05ffdfe92c6fa8c2f719235645fd46ff37730795f0cce41e247d8"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
