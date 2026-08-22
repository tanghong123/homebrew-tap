class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a4063acae5de66255aeb0e79a1b2930cbaa373ad7cde85c4a48e420be4eb8417"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2395da963ab07bdc2aa59e2fb82bd5b8a8ebf22fb681bd5ea1e509c49d43c5b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4178b995693857f11d783306fcfdb4d57c5d4a35acb8c94743070d2166e19c68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89a72f5e9fad46bf36139634046fdb6f69bc5732af023881e0223ccd56fcc619"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
