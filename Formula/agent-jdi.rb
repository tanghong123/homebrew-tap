class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.354.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5e2f702cc7538e8a9226eb6e1e1513b1c5d37674e64d61852bac08dc9fc3a2b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c81c1501d5190a0a590e1114f3f147cd64f05cf6051e54559521300d016df324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4d8e5b35cdd816a186b38b071c2ad6870d00f9afd277018221d926cd39a3477"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d79cffd16ee8469975b1c639bc4bd2563737b50a60a9e35c097ee75b5c39127e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
