class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.245.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "81275869e246b5db3f58762f28a0f1fec60d26f237a443b4c447a58d98427296"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "86a9aab4b2602bdd61c8b458161e37c2b7a467ee32da60002b8cec2f688112b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2aaaf5f9c4570c65589df6394c0888a90f7e8f29361805628c689fa627d3abd1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "524de4e1c48a21d42b7bc3ddb2a402fea10f1f639c8698378b8312a046a94c90"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
