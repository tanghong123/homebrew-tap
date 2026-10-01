class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.341.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0e68f19ebe75cf727493ba1045fe01992c226acf612615e67de7d462784e3455"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "89124198c68bae2170fb566d95a2dbc45e6ee7f9b88a4cbd978e7585a23c6be7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "064c8d40909a097bdee775c525967756309d10d8d137d8c3b9dd0c4466fd2232"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ffff8c9f9a216c2b68419b6d3d60a5a6b89f7dc05465c49c166f785e7eb7000"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
