class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.398.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "33ab1b79bae38a5a1fb10ec2e830fd05e2b9aaade917ef94143859defc241f88"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ccf00af6753712f4c4ad4bc6224ab341c9f22d3c9d681433195791dac48de524"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a87f091e1993c18f3c8aa8e828d5bb08062eb1780355d5833f05b1931e515da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7184ba3c500dc9bff86d41735da5fc6b817652cc7dad7c74715e1bf266546298"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
