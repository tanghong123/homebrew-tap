class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.183.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "961ef3df592886856e5969771accb719097f17cf4292d5eb6783b57374edfe35"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "af8716055028cae271c01c9af2c0e87a44d6d35aa32816099ecf77f2e699de0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0cc266264af9a9ff200a32d309c7b8d1992d77841eae0b583784daebecea388"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea2773c09c695f136383a50d85643ca04234957f5731a15a057c1658a06b9962"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
