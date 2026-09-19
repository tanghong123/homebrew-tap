class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.277.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "03abbbca6bd84d66ca5db8cdeec953fb47c8055e2bf2898aaff61952faa8f7f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b098f97300ef017ff9b8df2beeec298c626416658d3853e9917f77db4c095d12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70e57fcf08fcad19bb71a27d5fc3ff7aa4f643a248395cfd987718dd6009e67b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f031f72bfc4b00671194f044dabab69ea9ed5468e823ba525d6d1bb9292059da"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
