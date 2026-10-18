class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.388.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b13c6a46767f42b051aa4189f592815ded5a50b5acf665b3312f9c8273a39995"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9594dda8f9f9efdaaa1d57973667a73cb92acfd597e9c08b4ebe26edc244f1f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de7b988b6525e1e62d796e0d2dd4fa658d593d50686f5d58bbe7b756f3858374"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.388.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27b3de981c8cdf276cb8e6bc354519358317195e2fb46525a3d4a2e668164f8a"
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
