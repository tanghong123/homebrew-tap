class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.44.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8d58186e004f383c5306b0a629883061065be255660054940bfd593724d92d98"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b7c6cbfc9f23113e878085703cd2a8b913830fe6da40bb68ed0f6ab4741321e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "696c8a08fa321d22ab740c403ce4057bcdecf359513fb481b75428ba8757a7c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cfdf70e9735444936f64c73b95c50db2fdc6ab0236c131622a6de3383375bc6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
