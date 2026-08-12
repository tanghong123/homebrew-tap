class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.64.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "77e0e4744273bd8ce0a2e644648920ab72c4c25110100c7208d88a5df58442c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0d5bce85f5b02fcf7d170c78f1b1c2f7c18fa33abd1725751fcc19d7b1161e6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d4d942c0979de1cfcf50c57767d8c4e5ae51ec532dc4636cf67ca8366bfc345"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76813d61328c8a97d8aef1636bfd028be5186228e1013dea89452836accf2b6b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
