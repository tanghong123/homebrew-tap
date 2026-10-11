class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.371.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2fd3f7ebaf4aa87314ce21cff9297ff8d94c376bdf44498750d9af5fa1c145f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3b1b174ca4e2b15f16cefc62aff27b4ba17d085965e9a92976ed7aae9010fd95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b0e28b6282f591e072e22e9f0d347788388283c9d929571cc85d9e80ebfedb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a758aae123a4a32ec1e26cfc55419524ce11666ec859bd9a57f0e7028fb10ed"
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
