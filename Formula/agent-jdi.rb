class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.544.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0a5f3433113752acbfbe7784a3036251c6fab1c2f9ad36b4ee4a30d8bbb41a14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "466827147bc2b9914745b994a2607fc1765f1612463402a673ee4da497377c71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58dc0e123756c76da65777e0974ad008b23d8a951511ada8242968f8027bfcb2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.544.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55bbfc9def5bf5919959858831196c8bbd5012ba43b5f3326f5b319386ab1b70"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
