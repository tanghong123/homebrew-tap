class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.551.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4a6d9beaf2290d8d16cd46a0d20ba1bffaaae538b1d6ab8778de472f8c44b160"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f0aff2e7d647d25258ac65616b9ce1e4c70b9dc8eddb738206630cf9e2177bb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f1f6ebd3aa415c789dac3f00ce62fba1ad8689fde2762e069b21a7cd20f4a9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6674568d4201bbdb96b487c49ba5976cb1cc3117b9f1dbc6614cb68b69b77bb9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
