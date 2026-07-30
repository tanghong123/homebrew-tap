class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.13.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6aa94d19ef977a2abfa532f123ba8ac4c5904bb99dba436f061575521ca30972"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "505316ef2c8c7f56bb46e508c59a8f3165d8b9b4bafca0df92ca0d4e9c7479f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd76766dc275215343788423e1fa47551d075ca6f04bfd555844eb9088ee8de6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d147af6905e7aa802fa53ed3eeccb52571b23087551785dc08f92c562ed8668"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
