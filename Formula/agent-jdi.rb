class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.9.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4803f23893ab5853b582f743ad9385c8cf33d616345f7efc68db6c216fcb9576"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ec75581ad12578d997ba84f86a2913b932483f6f00936f459a83207bc13da3f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "426e593ce38a027d972c7a65c0e325e743a5a2657cb1e24e1bf97208d2b55a4e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4ca49edae15ac40290cc0a9fc443e234fc1fc1cea7743994b5bc227d66c84b7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
