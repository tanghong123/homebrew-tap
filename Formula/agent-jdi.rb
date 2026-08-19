class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.94.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dd47277cfcef83981220673851fe20bc1c5c65f141a8f97e4c597d84ec254f74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "82cb4822a377775776ea57d50c704bb55f94ce22d5cab0081b3a63eae35cd22b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30f5b28a9cafa916f663b20d44d8a22ef5a7b865c45c33f1c8c58f995d2d45a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5f170c8d6cbf21111b3c43ae5b311004b3e408610385051032cab31c018a259"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
