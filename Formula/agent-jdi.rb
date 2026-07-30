class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.20.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ba07efe56396dd547da95d7494dc2468b62047f01a7728e91a729d627ea9280d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f39593f0802905c3e4efe8f0516697ae23986ecc94282fad9a7ea34f06408c5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c5cf5703c6ade1ee1bd2f1f19055f6aa3d8aabf3cded26ccbed4b5ba9ec0a8e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "547898e87381eb05051f92d47457134ba6acc48a47b9b09f2f981cbef67ce64e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
