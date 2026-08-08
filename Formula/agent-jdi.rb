class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.12"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "613baf2e3d1a4384baa5cf85d626703031eb4f2e69a76e6aa28e57240e13de06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5d8a4658a8f537bf522a22949cc99cb6d0f33df602a73d5e7e05e3745042b3ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a66f6d8a832e7bff96ff83aca4577e77d83169cd95e87864e5c632a8508679fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4eb9ce3a2b8c430d76aec5806836adf4c11b22df16b2c438fba3eafe0229e431"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
