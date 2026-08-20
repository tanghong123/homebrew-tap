class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6b606bcf038feaa0209ff075cceba7839ee02c6cb281af4fe96b8cb09eae58f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f757a8098d5c1b78fc49459f99de6319e2b668cae1eb5b8d3c34b8709a38de96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5329b4349102da3f9a2b67f2823dcb63be94ccc4a923b46119b7e77bbfe9efae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1feb9cb8c57b972068e1453b514b1eb1b96f8e417434e1d4c4515fbadbc00b58"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
