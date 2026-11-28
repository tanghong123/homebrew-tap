class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.577.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6959d975a621bb95d697889c139530bdd041feeb358771215741cd8baae3747b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a175e8f28085818dc7b9ada2ceb8ffac772976e7871ee7569e352c2d824c6503"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6722aa569d71a3ab79091d9958ade1d83e2fe176712d044c67d35a59d17fbb87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cf624b8616940191436d8a7adf35f9b6c79e338e2eb31276e5d0e6bb0ac9bd0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
