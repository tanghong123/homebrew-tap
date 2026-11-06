class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.477.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5b5082fa6a0216cb4be53019235e2e71767082c95121791b5a238dee78256ffa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fa93f3a713fae2b4e233f104f81845c9ac4cc535fd8970d296d38709aea1ba73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e82edac85c516ba38abface73affcddd17e3f8532ce8d5406308d8d2fba3b23f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c62e291c3a11ebba462e8ec44922c02b4b3ba66b860c219a5d9dd45e610a4fd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
