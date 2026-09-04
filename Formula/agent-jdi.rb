class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.152.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f5d064edabcde82d5d77b93b1d2bbfedd306f2ae279ae670bd078e71f7c7d762"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7213e5e9fad2ea8564b0979eaf9e3e28f4a87d4f59b93e10a5c98373248fae84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "39088f70885ed8e073c34a3e5d2686fe436350aae8e4a50a658fe6b7cbb75a5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28ea04d1526289a69bd1e64c414df104aaa7cfd856e5a467b102dcd863bdd494"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
