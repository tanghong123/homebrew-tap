class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.393.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "eee05a76ddc4a39f66139fc4450dccd3e18f73b795b3205f8d806313364a3265"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4876e76d83e008d45e66656101bf45eb8bc0d893097a5194f77c663c3e7e508a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "456b5f724a9f56ab28476a804f121e1aafe4a2d1e2961d5f66575b10cf60acce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "380076aa267a9bf3011a9a8fa0d50a09d6d4cd9f34dcea3134606e33cb73bf36"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
