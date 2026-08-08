class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.17"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d0a4381d9be7aa766a963c0acd8b94012db2aa07f9c5c8124f424bff0a4e7622"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3edd199af5087bea264e726b010f90c1634f936986d3984d086ac4049bfa4e25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "287423a99c93628df827b88ff97f2a1decdf33cbe2074ec387e40937670bc2bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b385972c6d00fe8c1628589dec1473e10dd4b5ce583ae57933a9e925153f8df9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
