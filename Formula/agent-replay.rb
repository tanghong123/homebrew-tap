class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.110.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "846daa30d0d13b097240b6fd4c8ee8638b1e65f99d8da8ca42dc9df679e491d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "70f206160c4e03b80cdc5f5069a867ce419faff1cafad82d241539f48c69785d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "270359ca4a93e4516e34fd4648842b538daf745c5de2a14ef1cf5c61bc169a15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ea90f55af653e392e6e49070dfbda5c88d678b5bccad5c5cbd5090ac4c42b04"
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
