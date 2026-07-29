class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4fdd707238f1737549960a3eef346b9e92d2073f12f3c29bd294ac4407e89ef8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "91aa55913da33953ed82ac120e946a0f0ac2f4dfc5c78435468737a42922d8d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0339bfa068422a635d22ce93d46e6f6b442965ca1f7b3211b2237eddf0b2dd7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fbfed42b445da7584b8afd4e827548b7caa40aaa37c380e66c520a404aab6b23"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
