class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.283.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "da966704a074d7eea020b819343371df67751b1158dbec4be9b7ce73e6a0df58"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8848b362a78b04ff9cf5d14716bb9c7a7b93b0f27025e08cb359671c0d041c86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e5484845517d31977f929512a563fdaceacaa6d6e09f93de09069d47d6b0d9fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d666986167f0932d1049df99825bc650c0c90278608c63f3d3260ab2c7dd9ad6"
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
