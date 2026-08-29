class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.115.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "22f8b234080a78cc26178a807d7f018d3251ce86256ee345606a93a686e69910"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5952b927b5fdc92bd59025931bab28389a24339d9410f27c658fa15c32dfb514"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "047679bd8b9922cabb5c417737cfc38d58cb95c75ae5af4fa1784af50feb6b67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cd08e92b66474641cc964064e88356e78f2693cb80009b54a580e31c7fb667a"
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
