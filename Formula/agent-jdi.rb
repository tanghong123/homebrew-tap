class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0c65d4277acebd9b47f546c96ac04a6fec55f259fa0cfb6de1d28a8b2b383ac2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "bb5030ddf898c76b839a4edac6df89464f63c1ae8cd021f22c7478f6ee756c5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "626ad2709237885d0065179fccb17daf1adb71baf0785b4f48a87705a3627787"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d7e3a4315d370221b1d059a93aa592cc6ce930dee9a7992ea6535c17fb6bdaf"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
