class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.308.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c6714efd1cc1d86461fe36c679a570357337a408f0bae7d286801ac13dbcb846"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c85158316d8464d920652943a5f52055054904faebcb4e9346a1bf71dc90e86a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f34fda5077735ccf7794ce71c413ba011a2c8a8986baaf4913aaad7bec7eff69"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c61089e617e09eba168c0eb1a79bfa614ef9efeb14eaadcff18d3b0a98af02d1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
