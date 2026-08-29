class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.115.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "696e45eace2117ab2e081d0c513d2e501d86eee704831da49c5e3e528fde2b1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4a51470e3d32f274b759b79e0ee864ec713465f62ce589d349c511aad53ee3ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53204f99b7c38e38f7338ae2c9a862c5994cc7a924192fc0b1645699795be3f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4eb53a23114b014e734c4e09b20c3412a7c5ca8b9449450be6e12488f687c751"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
