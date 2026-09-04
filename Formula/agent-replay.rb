class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.180.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a7136d4035971a260ee959a8a5537079f908b05026cab7c1933326143328392d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7021d55418370ffb50324cf5f8c539c802fe9d3218e529c641f03c0684ef2278"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "666e1250d211d96f64155d42351fe211f7a3123cfcf45083b1a477a4e12093b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97238f19d170f9fef6b13a22cb534e391602b8e35feff7adabef7184d0ce6f73"
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
