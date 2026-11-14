class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.521.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bddea32d678e78b2f4a90a1d1ba0a2d743bd9b348a01cdc1317b9ecad0426f61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "df1856d861eaf101dd10c60d33349711bca29b8e33a984adfc09f44da504fb8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dee9e586da06027f676b57c119da390acb48b15793b41c1e0f0142a856506ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82793d18591c27350cc54e81d0a9ae1ce7c9e2ef83371ef1cba1c13d10c19757"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
