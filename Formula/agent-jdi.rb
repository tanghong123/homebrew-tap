class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.482.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cc8e36d9dc05d4b16941b698d85f9beb7303746601ea775dbd86c61578ca1aea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2ce7e82b495bb071c4308d374ebcfbf43252d9e1cec202b22c86cc7bb71b2376"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77c4f5701838b248d639e85a016a638da5b4b64be1b82718c4621e81353aa23c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb99477b0f0bef9a5dffc704c7d1b4f07aa50935bd287d98d65f1fde931abc0d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
