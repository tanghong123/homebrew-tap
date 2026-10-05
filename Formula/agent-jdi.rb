class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.347.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "52f7497fcdd171f7b78af70dc998f067bdeff71e4d47919781361daaf8be948f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "49421c64974623be1d2b8e852c3bf41bb348df5f6127540e76de4f5909e6945b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a49685a3b919550ecccad9cd48775035cb3d6fadb56bd34ce130ffb571e4c5c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98377734eaca65a4aafc303c8e13a342cbead7136a9d1c12cf0c1230703ddaa5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
