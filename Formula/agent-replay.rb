class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.311.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cc1fc1cad6dbebbb65fe4f3db05d41bec1715c702c9401a51510cb278a01208c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3e760d9269a76fad3894a77debdf0c99f891af9861fb2309ce272676571052ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e945d0035a911c04bcc247a4287748925689e666118840af2855f6f2b932ce6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41964dc56565d653aa155751553ded301c92991d22442668b476d0f0ea84bf08"
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
