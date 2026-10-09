class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.364.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "07891ce0c9fb3f54e4cf5584185587b3e3cd2352337ce7d8dfc3f84790a903b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "32210d87e7e1e843caa99f6663ee404954ca37810382a026bc54c7460665b06a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "056aff40ec1723b783cbf4c2028f89a4cd132bcaf75f5a7b0991cadd37641534"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9cdb23e44359829883c4a7c3345da24c01748e232385907162f68b175e9a8478"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
