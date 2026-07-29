class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.5.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bb139666e3828f09e5e75069524aca131e4446cd053a04bf923f54f80da6f5db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "da9a59b92a7df51d97424fd0931337481fec050a923b76ff0c24ac0a4867692e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5fd80a4c7bff850d4da3d567e2aa82cfc262fb6c14e45528cba1fbba61bd4456"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.5.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48b7c40c2ae9b0bf2e3d57335732d99bfe18afb5adad41a587076e555095d0d4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
