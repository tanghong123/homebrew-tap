class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.350.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f34211e481596e2d35125aae9639a919e6e98ccd750c13ba5d9341f43f55ce8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "522ddd7fa1753db0c092fee7fbe371368277cd55903f1c9b0807d52739b7f03e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "652815a9bedffbe96ad7ad8080b918c3a92bffb6d80b8dd498d95c3ede2704f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a4bc021ca410bb4400037cba830d0170bfe456640b05a9ce0233e6670cf46f5"
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
