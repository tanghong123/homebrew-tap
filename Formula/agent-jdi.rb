class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.7"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2307328c04481d4b0b6c1d6646f6f3cd2c8cda3226b80dd5d448578fbe325d98"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "dc5ebab21f6cceb88d34e7940e3f122e2dffbc9aad7a1f625a3b78223f8e5fe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a5c258bf5c910bdaf5f5312a381c9357df0e593e5077ec0441ace98034cc676"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee898bd16ab6e0ce490ea8b79433589d3b505a501dde2a1dab7129ba2688672b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
