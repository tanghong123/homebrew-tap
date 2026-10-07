class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.358.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e3e16e274c459c23f7be2b02b4b0f623ef836676d0964a96790afe5269038436"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e51496d125964fe1c5c7e9adb6f54ea55fecaadc7172742dceb6ef1bbae8fc66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5279c93449c68b376afc490f55bed3e24d9975dfe3b94984942ae4dd3c2670f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47504783a19286474493ae49df8e0a31f0b3cd300be7cb453ae28d77df4c085d"
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
