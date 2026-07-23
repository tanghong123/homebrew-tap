class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.17.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cd5fc3913365c027f6f3782b99e43bdabbbd7372e517b01863c743496dbc37fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "45ad39c09b77227effe5cf30eda0b5b10219e19ab25af064c3f24e7189a1bbda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a9e7824fa4297a30e37892d3fe47b8857e24dd5a32c72162eaed74b8ca696ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8988ff2704232a85a9bf6890fccd38e772188cb2052b6544a81cb0be8428e36a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
