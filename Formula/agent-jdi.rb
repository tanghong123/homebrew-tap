class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.319.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e0505bcd04f98fb2d311bda5227620641e00affed715c3b9a8f0d4e37bff7577"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "89e00c40a8d0fe411b00d77f6bce4cfdb284b385f59e5f9d6c6d1feb73225556"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54822ee97779c21fb370b2f1d98e0f23172a61b459ac6744079e66f4b72bd6ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf6ad656666ad024153424df99fe292dd26cca80db8d3357fe96c79f60b55238"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
