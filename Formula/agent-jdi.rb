class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.438.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fd0b89c798ed014cf31cdba9af6b8e05754d36e47b51d951bc6eb13313d19605"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4f2ef1e23fdabd1cc40aca16f752ca7a64567039823b2bf608311d6f78e91b0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc1952112be536103d42ac700120765e05479de678c487f9ea549e7a4f44ba52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bbf3ab0408038f75ed86a5e44b0245cc81aa817721efdd2edd5fd524fda82b3e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
