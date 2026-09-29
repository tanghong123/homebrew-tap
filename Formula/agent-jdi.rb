class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.328.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "36644af799733e7f064278256f24290d22f5b403246832628c4fd397351ff6e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2124e2b43a300c4ffeabc6ef72f021fe150bacf8ac439c67cf6aecd59c68e214"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e050440e3fb30fd8408354dd893c0538b73d43447ccb35bee5c2e3795334d691"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e9f567a6603a4869d1a016884463d8cad26ae28ada292a0b7d626e6feb96d56"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
