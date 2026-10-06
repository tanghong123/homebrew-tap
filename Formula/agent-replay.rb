class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.352.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8454b76c39a1df604f2f44a95f464be79ba627ef13b21b071fa46d3d65020da9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2fce24f9adb6f8bce11003920b7a41bddfde1744d15b39502d6cc35b2348d197"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3283651a11338d23062b9def40073da229e68f52ad445f777d3e72d5f2a1c77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9bf91a4650bcafbe99b0808939fe63ad8ebb83f1bbcd3b10a836d2df62ebffbb"
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
