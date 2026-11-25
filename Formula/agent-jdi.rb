class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.562.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b88dee211bfe9c45c0db2c128a1b4116e128ba87e0929e2ff116bea5aadf5677"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "43b4592fa80fc4d63fdce1bb91a1d5116c7b16cf1e2347f457ca01011d72084e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a6b5bf8b3e3e5bb8eb436e88e400c46cc4d57f3d17a1d4952f47d6d4afde8751"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "225d207aff433d7514f31493b598d8f286962f7833ac56bdd6bdcb95f61505c4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
