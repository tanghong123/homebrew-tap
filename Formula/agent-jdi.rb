class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.475.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bc68496677b6fb33eac3677b09f20bceea70266d8e67ccc64ac83142a5cd0964"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "68596e44efde63cd300058867abb5bd8cde0587609725d9b4bf6e17414cdd45e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2a65d22a8630cbb5c126577bca91184a61433ca80669d6538b8e83c332bc193"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b21b1754712432242890ec0c0478701c873fa11e854533201543640cbf97659a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
