class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.3.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9cc11b2b07a6dbab7bbc6a68d7fdbb7e9cba69e2a47bdd85c41e107a0c49fd62"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "43dfddfea62f88496069640be28dba97e0263b73d742319b853e05a782a7b5d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e73d75ae5a2a1973c9e5bfda8fd83acb3d0d4cfa318243f86a8f7569b734db0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17fb87fdd0641b64888e59a38e9b606989011bc2456b412eed30e17b25817e3d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
