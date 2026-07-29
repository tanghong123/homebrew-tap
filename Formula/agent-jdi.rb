class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.3.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8e166e518f025aac99df502ce814dd77f35f8a718a01d059c592eeedfc2c3da8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "25ae70ef63b7d7701e624f19bd2704a2c3e15972b8ee2f78d3985252631ffb83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9761e4f74ca88bce1c210949f0b55c2be5e0851b940425bfa7216cb9869bed0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "deb1cfaf287870b1f92407d17a1a9b461d6d565e9605da7d07bc99a81e58a7da"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
