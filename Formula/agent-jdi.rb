class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a32a8488d71db10072fd8f2ea4deac0d147d229439347ca4ab75fa82b0b23f48"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "439f1aacc74d022d8e872de4b1e99b02a3f1bd84aa0c26895d00ed9f894cb521"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a131b8891d60d65078093ac41d31f5723d4975bb825665de27d82a79259ce15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70ea20af944cc4ab2ea7af7a81d4ea40ea8ef045ac2b8f2b15122d3bd2d0335f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
