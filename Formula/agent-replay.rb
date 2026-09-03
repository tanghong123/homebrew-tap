class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5e76a71aee5916bc4cc8b9c0b930fd364ebd0c83e5a25a8b3accda143791ee4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a18f4da2fa77e1118a5a6a2c21488c31df2c0ae4d4fad5bce71cf359d5205180"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc539644e1a38baa2ff9a988b7ffce99a9a56e4fa0b5b960518db9a33d008747"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12670fba863108431bbd5caa73ca6df77940f847e9632c9c58e70730287d37e5"
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
