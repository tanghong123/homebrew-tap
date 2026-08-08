class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ab571ab368f1a3de71edd2e7451d2b67f960015e2486565f01e563c4b62b2d4d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7680b9c18934bcd48b410e9ec4b026518752f75cc110601b0ec33ba6c347bdff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9e261c757091ebec8fa89256ce68b347e0a88976e849a5cc281de2984217529"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "541d77f212e067f178ae1ea4c73f0eb1773c1038412b0ba5a3f415a416d08467"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
