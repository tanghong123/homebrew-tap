class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.342.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c1ad3c7853763ac9ed7088ede09538d34c976bf1e16857c2d708cc899b2ecf2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4162f994b62c0b3ae81f91f36c1f76a0cc9229a6134ec561a21fb45782601fbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38fc74f29f7819ef1cfc7171bd6ffb1d864cd9d06fab31b2ed154f928c3727f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ac3ee52ff6b551ba5ed80eaf37f07f08d8f8901cd3a09a436502c7ae77cc271"
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
