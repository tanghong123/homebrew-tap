class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.13"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bf5639253f7f7fee04328dd6751f1550427f2de61c74f3637162ecf2a1a2d953"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ec323ab73e8ae2497eb70a7587939e240a6837ef6373904bba57e96afcdbb5d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f77918dc0b1ddc517e33cce39f4142559150f66829be81e558852953f4d3e7f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aac0caacfec6c391bece4edb00576d458b5c5c1c08ddc3a3a0bc517b00c7573f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
