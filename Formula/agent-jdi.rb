class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fe1df71f44c34c414e3d55461d22e6289e3362a124f448a375e39f5b342da9bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ea0b440d3070cec0c28a849109fce59f83af34065db0118d91bca08961e596c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7809f08ddff3605d32547ed550dbb1598caea63e3f62f97e3c4873b8d46b95a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e48c5cef7483464c1faa7f731bd250a271b312b9573778bf656618ecc34bfa1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
