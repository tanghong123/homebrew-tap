class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.297.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8e7ffdc686c6c09eefce1d97353233d1c8f24a19e707039d59c92414ba51bf2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "09acd30d56475b9ce2b75c84a8780bcc769677d214cfef17cb7e432de3fb08a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd02684de712d313352de886bd64f1172f514da741413eda6fe7341b37ea5af5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd7f8604000564a52c661228a6b4a235d09e58faea27890a2d9cd25486157ffd"
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
