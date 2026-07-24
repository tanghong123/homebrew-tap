class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.20.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "40cdb3e32935ac73887854b4a2deea7190034af06cabc4d2e26b6f5966e5c24d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "18149db004410dc8f22436bd6169f474b1c410666a5d95f40c28c3213a6e7546"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afcf838b09c8307d4a2a9186f09dd600f014e3a54ad65420e74f8adea6f2bd89"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99eff586bb592cbc17bad32b283681b4fe5a4c4af28b1da0593375ebe250b7ee"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
