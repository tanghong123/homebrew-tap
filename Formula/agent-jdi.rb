class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.422.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cb43561ab28bcaf03f0a924285309e6a7ebbcd6f87e8629aa81f9dab021bcb02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f10ccde7115a414d7b465cb1ce51d12a2cada09d478ffc1a56ede61604a2e7b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a7fae509ff56169866363d4f5818824d2d926c69e42690ef75d31631765b946"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef3eca5789623ef31ffed93fb44263550dbbbd9453f33a59593391adea2b6b99"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
