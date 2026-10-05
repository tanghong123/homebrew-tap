class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.349.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "172b811ef969c4aafab4602507a6ad304fd074e586f1e22f2d198cb40932d0c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b9fbd2a7a0e855fd4a66b03765d6a8c4694ed4cbecdb2b4e496831c1a9d60b15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e3c8016156748d74df21bcaf8b0f5b0f675d40705cb29630de26bc4f3eec2f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88e7437f81effe24ac36aca4056c4c5b5e230d2006a35154da064989d12481f1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
