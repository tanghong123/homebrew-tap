class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.365.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4cd91caf44693aecfb0edea982395d348cca3463ec6169706e43c91405445dc6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c7703d8ab1230cbed80dafb88a3ac2e1c758f1c441577629d2df6930dd1c90b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e12157f9482258e8c3ab1487515c1f873fbb9ce9daa40206e072609becd6a50"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da148ae9eb3fc408c6e9cacf17fd5fa651f75612cb6d89e1461402e6cb99b9de"
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
