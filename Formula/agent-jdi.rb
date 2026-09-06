class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.210.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ceadb6313dd3db1344bbea5bec76d61f2fe2dc099512064ca54ce70d6c0de0d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fa4963b2c70a5a66b3502b93a6fc5495e836fe6172ce5fce078d4c6edd1032c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4411bb382d601837d54eeddd915f95883631c519f545cecd80909e7c224d0571"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1603ef34f72e1d2daeb38c37e0c02ea968f54edd07843660648aef106c9f3ee2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
