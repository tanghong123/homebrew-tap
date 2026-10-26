class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.429.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "08a998486de122e68dd6b3d110fda5ec6a328262ba58bc356c2fd0cca71e0b6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "383bb47df81b9fa260acdd8bc886bb0fca88097ea51259b0f7c052fbf5607457"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ddb46c7a362046bb4978df37fd850f0be735adf0567f0f9f25b288c0ac573c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a5d5d1b7ca4aa4a887d7ef66593b218d74c401f935a0867776fa7ea454b6708"
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
