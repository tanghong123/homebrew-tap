class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.7"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "efe52f5c5af6d1ca4f7941de20d509c09252340a3ccdb99cc9057228b430ccf0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6643a698545559a12dd047d0d575eddda2634bcf0cd4d2fea40b21a4d34588e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ddd5ba34d7d5829236cf181609f4e75cd070877ff790948b1c091b7e690efde"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "766afca117b44c7c80523f7b889de3978263f02d6b85e8f07c2e4cb70128e170"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
