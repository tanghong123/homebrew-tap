class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.512.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3ce47a39a8dae7b42e394d5dbe169b5cb04b7bbe6f81689715edb1a460175c29"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "83d4325ea87d9bc0bfa061cc6a6b3483c3781575ab96a642f87071d94cebfdd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "89d8d6589feb6aa0c918faa121989000692e06fc1b763beddaae4bd3025f4bb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b575904ddc82a7786b89ab90873e1fb59771c2aca18d635e363f5c5e6b634cf"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
