class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.112.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b79dfe803ca844d14443a43dd01e5df619ede88cffa5ddda1971ad31a15b874d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7fe13e72dffa3e83175ea0808f7e6507163622e4955e0a510d19831dddaea329"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1013618b9c9ac94f686f169cd13f847fa9e89a32374f4355b0af069f35385ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b24da692059b3b2301a9defea1afdf43320a461a0a1cf77bf94df7e088c441c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
