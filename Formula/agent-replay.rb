class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.383.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "dec86b6f2aac530dba8f61d27020a1c206d2598678709360672e68609e94d01a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "93c73ee1d1b99801aca6acbf6fe4a2a8f2606651443c28d63997e53dd8d21eac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a9d7f6c64678a5a73a847a9b9fc257df65fc35325c7a424650760d72ea82875"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39a541b2fbcdd89d33062975a67eb1c9b0125530aa835b27b9d1ca6e2bd62e61"
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
