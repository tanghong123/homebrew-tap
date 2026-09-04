class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.172.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "90f7e8704e87f77b2270895776df70b81f32fb0706dac303eebca9438199d90b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a5be007fce3143706219c3abeafd375423b07585b9c2b375c92b72d07b83edc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a31cf3510497daab1c8696667257bbec38f3e1c43e68d52c6efb120e46730fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6dc86c050ac408485382272a1dbb4e144461f37e2e74c6d67fcee81aa146086"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
