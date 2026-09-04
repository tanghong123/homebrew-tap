class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.158.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "41bc0698d20243f77015c552ab2d684747f9df5b0961fdd676fef91deec7d1b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ba78ee6afb7693bd4359efd64073d4b874872a285206f4acfcc84dd7a68ddcb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1d09507bba5741d338a0ad78920c0487a3e430f02a476e203744673ce58e573"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9e7e069557698e5dbdec4cff17bab8e2ee5716758e35a16c73d4e5ad114a0d2"
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
