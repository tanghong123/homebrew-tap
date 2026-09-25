class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.307.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ca877231da383f99076911e71e02eb9840652109898707f2cff343b3dd1bac9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c68fe547fd9eae5e89d83efba0b1a00a37ca2553e8790780806686898204d25f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5362b64af2d9544cf862431f35423c522194a8ae87bfff9e5c341414bcec36d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "845129051346039df3ef582f318ebb0a9471e5663be3f03a6e64b8f3c1c7d410"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
