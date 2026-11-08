class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.491.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b897639e76abc205c4db67ed12a2ed76f5a72314396f4e9e0111d63aa3139b74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fae529c9dc58f752bd1e5e0894f376efa4fef6ba1acb7bd1449d1df77d114d0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41b6c13d84cb06c84d6a6b5d5992ce035eb966f01fa10b48b44ee789b5998805"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21fd4d1fbed301791414951241ec4df6a2a44f2a4d057fba2debe7999ea332f9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
