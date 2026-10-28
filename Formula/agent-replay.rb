class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.437.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fb9705454868815315a1814bafc7decd990994a763ab44b47c67afd6979ed96d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "97d0b8c8d591cb8712f113590d40878c7e3f224fca90f57ac5e82550d638a547"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a243fdc3dd624e603b2f1bb40e0f1ee4d1fad2d0611783c5cb8e16524c6847d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8729edd70dffe344836c64581c1c6fb1fd3f3a6696d3170d2e9eb2c3ab4fcc6"
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
