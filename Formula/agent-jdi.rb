class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.35.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "13f1d388b9d7979b2d14d0e09b0185837c25eaf0fd7db936be93c0ab025105aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fa4315eb9db06fc18e64199da84945366c1977f4418e65dbe92a98753b64fb8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5f73e89d509b1db3253b2588697d52ca1a7c096f06b516ea4c71aec7ddd42e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c820430705b7cf9907acd28bb765faf60ca583897e96587e431ea2bff5203496"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
