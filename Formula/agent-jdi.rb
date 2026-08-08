class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.9"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4a14f7187c6dfe69d295142fb288c2ca282c909b97df16a06f6f6c02985fa118"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6981c2e7246456859e810e29cb2157a2d2758dce32b42e934198649b8c5b3b99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10fd8bb69598ed57cca19c8711f90b2805fabcc88b07a0443384b345afccc929"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6d43f84981affc4b43f307d3244dc4b3964dbaa0f21f0e6887c5ba9bb2333e8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
