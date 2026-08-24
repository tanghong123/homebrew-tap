class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "51f1fb45d0c2e336ce8ec92521402ff02c2850fe0a85f3970f16567cf5dd591f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "835b1dc978cb2cbce701509b72dbfd8287f5a37bad4184a909c0a49c1eb9a705"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f85c6213b237903124992cfbe31443ffd5a202599356ad2896a504f682f5f61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5ca88cb64ba8280aa9e5def2a9950c241c8f0d939ff19544d5120168fa8c577"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
