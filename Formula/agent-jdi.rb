class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.412.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dc68115871bb7b483f1db2807d7171f0ef603920f4450202046886c52c24d489"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9db1d3988bedbb5c739eb9d27477a88591964b30324b7d224041d78c24f4f89e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4257d868656e93cdb64f7d8b58e4b6b41f82643dd9024382897c81244c583d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "322820bf307abee9dff59a506fc618e22569683dabe44f9c68baa8d562f7fc47"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
