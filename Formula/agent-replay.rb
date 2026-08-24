class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.105.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c36c6e78d9a7940ec2c491ee79cd641be4a4b121351ae53af65bdef1c47a85f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "55e9b0b21b131733a24937fd1d4b2089118d55deffe5eab10866aa0767757862"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24c7a75e18ec039b05b1dc7842dcf19d930a33b73c30d2c26fedbe9188721373"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20953b3c9ebb2e21624471a75aa62992c2ba5463d62b2990a1e7ea84df5777e5"
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
