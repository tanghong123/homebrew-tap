class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.335.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "750ae3619af4356aabda8e84a1be27f3de789aa2c9b0b3b8f0eaa568726dbd44"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5f7aeaae7667c2683892305da27c36e3db184718f48cc21052efbe11a9a99cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d7e30456267c20d83ef42a9b54f1fc3c3e123acf2a53d9fbbda2a9c62ac6b4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4051a45e526b9e0d654353bcccb97ce7eeca13b1f2be28a1c12747d98f2deb6"
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
