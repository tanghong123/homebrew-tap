class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.199.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "12b075d4c716c12d1603d5c99a84ab9f822cff8c2e339466c507845524d10dc0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "dfdb2ec2d4cdd54926cf1283938139d73b4b7bc2ffd74afe5ee72d30c7c838f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc9584daa9a882a51e2c6f9f980917531bdbb9cc4b1eefd2924558ef660ab035"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8ddd50c74d7a31af9a4a4d8fc69c4867379b898b22139ce0681b68b5ffe0ba8"
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
