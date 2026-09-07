class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.227.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c3b35e52a539012bb7febf7af6571a288356a48991693ed17fe06865232327b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fd2ffa04aaee7e1501abce413efb35f5f5dbaaf7cf0e09485ab6a698ac1041c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0902d17234e3c04b3e2fc3ea2c05b6beb6ace9a9d9938e67fa80a04220d48b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be69e6bcb5318ff0858faa1e9d7905556434547a9529a5e454ef6e590fa1e6ad"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
