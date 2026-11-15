class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.524.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "aff1079a095a1e774b35e1258319fae13c586b554554913438923394c8ea69b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ef1f8097c60586f4bab54939aa0002356a312711afe8579cb2e4a7d64003e047"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c0d6dfa4cee634e871805e5ed89165229a5113aa1e0127bef8d77a19ba06423"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94ced2478a855cacf1fdd2e0372436eb0d8ee2f56267861f26ede31dbec430e6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
