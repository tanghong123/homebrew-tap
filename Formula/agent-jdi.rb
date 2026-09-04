class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.166.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c93d3dd6d3fc5664b70c4fd5e1e57abc37c390adeeac488ecbe92d2b67c6c7bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b3faef15bd22a8e451ee29cfe1743c22aaf0db7a4cf0c2dbf4231cfd8265a6c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce9199da6f721b684b2aefde710180cc6c39136fd10a51f34fbab7cada4e6b90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "530c25623fad935115f637b76ed5512267c48b5b23b297b7bd77ce61792dd9af"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
