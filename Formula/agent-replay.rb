class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.366.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "741768c1337f66b685736ef11cc4df476eb2f0456c27cb294a3198e59f874630"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2f7acbf9fc71da0ed5c14487c443b17e07d60b4c79928fcd2b85930ac359a3df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6e4336a1036e678a1fd80def3258639a8410193b82213029e7df46b58105c61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06887cd18529ef511a6bc6b66f0ee06215e43f024f737fb5f1480ba63cc6d344"
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
