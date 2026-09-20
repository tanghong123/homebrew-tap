class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.289.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "68eed5307e5fd57121f25312cc587c4f53b96f9693e9f32542d66186994a5694"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b0cf2f035d651fb83dd1d966e89b0541b50dad543edffce445df0240c0ebbc45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ca70b31d8044f13e8d6a679038845efb2e50b99d6f9177e4b31b50ba028ab15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "824bc862365727dac05b6cae4c045ac5703812bca1bf4b7faf2100163620f452"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
