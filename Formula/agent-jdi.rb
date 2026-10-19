class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.395.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2413296325ccdc24d97a81c51b86ae83968696e00a33251a792e705c91f50c7b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "702d96f81366fcca1a8213bfaabd9f09ced2a903a128ffd0e076b5cbbfcd8e70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30cad7bef92883cbdbfe059592dd4a89033316a954a3ee0432468f3db465a4e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c27519ddd6128cb9c782f602a239a9bdbd025768c440ff3d9cebb4d3e1736e0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
