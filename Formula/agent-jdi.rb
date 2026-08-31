class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.122.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "caf3d4080ad69230ca18612ff05fd74748983a228d67d946d855bf5c1fbf586f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ea5d5083ea56c0c095502a66c5a40dd6df4e915d6839e04a5d284407abbb0d7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c441ba677a06f216eac93b2330d3a26fde37155f2e6c4d28db85460f85079962"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc1a53a61b266d461d9dac2a0d16a51cf3fffb8ad5b09e5879648166467cd1dc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
