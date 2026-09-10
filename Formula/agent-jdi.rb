class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.251.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c59e896608727036ffd192f4b15c2b263aaf87f2a40e24eeb2306afb98e5b955"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c6b6d4add10ca64ff821bbf463d5bd7e5d3fb84f37a228229b44fa8f7b367518"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f944c134ec39fc795bf1da138165e16b21e55519fcdc583ac183a3d0d3910c88"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dee78c297080828a331ad777dcbce8aa8379607383a7680ffb1205d6a885c421"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
