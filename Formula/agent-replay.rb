class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.223.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8dbf265fe4c4a1e456d49b44e08b0e98286a218a52450fb9df7e5e620c1eb50e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2ffa3b0b26c4f2a82130f208b90ad1dddd8f84f307f4c70dee7b378d701b4553"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48f284e49cfbf93fccecca34cf6ddd364c7713e81b29a74cc9adab700841c424"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83d2851a6b9c5bb77fc7c07b18807957447b8ee60f3689ff420d5cdf64d7fb4f"
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
