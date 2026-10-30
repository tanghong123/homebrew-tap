class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.453.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "51f5161673a7ab4c2017a5267c8aa21a9f07b2ae3fe5c0247828222a9ee5f732"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "413c27b197bd5b1ae7bd582da786ef6a815efdeb084974def9479f49750fcc6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff1831c6aa482823d9f6ca3519f6009979d6c0ad9c18c42d59edea17ec59ac1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d21460b7c42add5c2d388dafea958b8af6061348f4a583406e1f24d3a683d5e"
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
