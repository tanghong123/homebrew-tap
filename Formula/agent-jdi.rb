class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.312.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "06e8b3189720df1d62488787dead82f5a5aae30763d0668e9ce79185857e9bec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0c63f914205e25dfab6ba97bb52a0c75257a2db9357630f295fdfb468fb37c53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a295f3e4d45b072074ad0c750a2bb62a601f1476158b535d582e4e065b7b56f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97a97bd1cf77004fbdef80f8d85346b8aa76325db2a8a221f5961c8aa282af7a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
