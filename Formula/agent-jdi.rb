class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.30.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4416f1fad839067fc404320ea36a3d2ef02c0e84dfb9feae355e4632d6661a0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "efc601910c19c56275e87866564dbfb7c993ab00479ee1da8f30fdd82c198acb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5a9163f96d5b09a21204785149ba5d83fe78a91a64c1155cee9ce9fdf5fdc7b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "418ddf753391dddf5415ed6e501c8519ba8b28a26b5033efef0a21f07c3caf97"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
