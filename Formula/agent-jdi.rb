class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.26.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0023e1cfd64cf4bfbd20dde7f475da06674b0c8130165e0d52705af0b31850fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "aacd5de23edd03572c64cf41a37910cc8e72b8948494545781257052a2eb41d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6228d75b765fd18e14b3c873e6006e64ad2ca3fdd4ff1fca375619fb5ba8debc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.26.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10156a45ae3720e40520b23a6b136a9bbce1b70b636221afb5807997a70af983"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
