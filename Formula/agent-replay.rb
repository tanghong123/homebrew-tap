class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.381.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3a5826f7a3b151a4c27e659f8dda4859705d68d679929cd63adcdc8d50560fbe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bc2eccc748f879dfb84a959e58ea74ccba64f1a11e51a13320b77d47be55789d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "faff5426a623ab01ba6744278d5ae718c1bf2cf82dbf14af4c30f715ebf4ccf4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17551d1a83b9c998f7a281940c30eca35a52882de55cd89eb3a0bd20949ecc65"
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
