class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.204.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f0b98049059fed1ef479bd6709665c66b566b8164ab55f7883ec1a01c8301078"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "575c240ce008d79f767a1fc3075adad1c61b8e348413e61f1426066eff3c1af5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee05633414f427a0843a13d8e0cf4dad4e13ae1c0357ebcdda2ac3638e527534"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "850da0c96ba64140eb257dd4c0f09d76aacfc11e269d7b33b9c5afd0ce88d7ff"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
