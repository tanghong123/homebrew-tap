class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.507.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3c40d726b5ae3d500cf92a3ed065898f65b059c3e2e67fdb349f95aa19b68b0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "82bf33d2d480fd07f4952401838022783ed3de52844c084b51c367c909880f31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e373957d2e83eef969014b16cd4bdd92bb93d89651805401d20953b06ef73e05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb66040cc838f1897565edafad1320cf5386ffe00491a1f5661f586109404fb0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
