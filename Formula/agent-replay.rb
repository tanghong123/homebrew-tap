class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "85be2d7692bdbfe1967363af10e0d85c40d643c820d76fc13e976949f4a57c20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0d24f72f7772c270a7ea85b681d336e5f99e5aad0c56389e835fcac0c1d01660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "586918ec22dcbb4768777c61dd5510d743f69682fa50e0c8995ee9bafe97f7eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41230783ef57a763b03eface52520c0b9820f35d068ed1c6afb050d112aad02a"
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
