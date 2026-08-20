class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "15ec3d8794fe67930fd786077c1316668441175611da2a47534aa4e13393e8ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "15d0b887240dde1221e1f765c347accd3121191ba569d58ecabc06d2dbec7a66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4bc6a58eebdec2f98db66ffc76f83926dd5096bddc5c4357726ce0a6930fcfc9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d3fa204eb1eb55d160b98b382ad09c5c1ab62eb76696a5cfb69bd89ea689c65"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
