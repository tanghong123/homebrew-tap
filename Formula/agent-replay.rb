class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.529.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "932fb6ef020592c148b644209e10bfff162ac4544ebe2d9da3925b3b75bc7733"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "69e8f038492f511e8f91855241f8b88629bf848024200250915f45928c976353"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f56c8ccb42b61289156b90de5bb69e6fac078ea64dd324af7d9b3a26f87b8167"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "624b35e671a07d490726517fdc35582ef941e3c7c9c1626b5e1de7cc0abb95c7"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
