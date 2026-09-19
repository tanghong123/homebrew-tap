class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.278.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0c07c4e33035b0bfde1753f4400d0c7e0e5d0a46eac98e9bd8f356d9addcc680"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f96d261167d2576ef9e5db4984ac879f83cc52f157110dde924b4e6fcabdef2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0639ca58d3948190624d2aa091149ce3039266d34146b4a12c87e9dff46ffea8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d81665b9ef0a30786a6e6ceac17059cde45c687099ec25c7cdd073988f302184"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
