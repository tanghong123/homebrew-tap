class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.330.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e25d287a8c3789b9ad0bfb8155cc4b46b08e2feb7dbf3373a2fa257c63066493"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "342a825307b2ecb49d68ffca8fd2e6836f3939c7d798a6b0742be3619a10ffa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "628f40580fd1f8eea9767a8c037b4bdb5c5bb37a6de8bc707800871ea9fb604c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b026ba85df166f3fbee845c08b09ab02ed13d289620431e35e01ffba59206968"
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
