class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.439.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "55a0d2f2623fb45e82e84da9bb1d382846d69f431272d3688a1fc822a200d484"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "32a4de3080b29e8a088412c60f283eb0979bbe178a56b8dd7002a933763458d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "35ce1791121a8256974d8021f02b117726d6d5c7997d7f30a32df8f49eefcd3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ca0b418827e28cd90ce5c5871924e42a146f4f49392c24a15286e401eb22877"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
