class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.55.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e6d7b2784b7d28eeae1df14ab164c3a28c1326e13de1a1ca2d79c2af116a8dfe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3a7943b94049323061d401637f7086ea6ff8808eba7f99964223de1c38782500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "beb2c3a2a980e7f04fafdf1590c4b2ca02fe248c0ef03e15d8b01cf955e83ab5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8300ed85023f429789b62b583dd58bdb08e14e4ed86b8384acd4628f077345f8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
