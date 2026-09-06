class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.214.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "17d2ad31eb8075786fbd99f438474c8a0b82fce24759f552fe44015734cb3795"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a55afc70da6d55e6b0da6461ab40a0b5e561c72af0d5df6e4d83b888fd163a5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "185cb6d53dad76f5e100d4ea82ba3666e3a6e72140985c372ea0b04c50ddc69b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0294f4afe10e0bafa8aaf0a7c10726800c1d179ce7bac78896cb855f6fd95850"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
