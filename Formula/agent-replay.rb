class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.378.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "48c1763350d8dcca0f513dcc0fc0263125d6473c436c355b37d445a69f62c174"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0718cb260d42c1d5e53b8c808fe36753eca6792197a2057f1f89000ed50185aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "999248f708433a8ad91905ef7e7633564639c7970e3101617f324defc0b9b6e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7eb4c319c6df6a3773aac85e9ce1cce3e4a4dcc09b8c6ba6fb90ec57b453f98d"
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
