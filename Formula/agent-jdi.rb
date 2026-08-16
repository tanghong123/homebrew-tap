class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.82.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2fb496b71d4e55b86bd608e1aae33e896ae6f6d181a2265e8903ec545f070efa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "58469c9c3a3c34e6ab58967d73a1b95a6d77febb5934f12ca69b347a532f5a60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "162882ef06e5b51e215c77a395f01ff76fef49b239453ab1b6ae9c7b4ea21236"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7a77cd068580d2599dac69c7af43a5a2642c5a36c0867bcab3435d7149bdb40"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
