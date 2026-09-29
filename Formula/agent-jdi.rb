class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.327.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c621b4d54a53aa04e8161e2bcef14598c0dae7d1e1362316309beb9fcd745991"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2ce7ecab79214ba173170981df08273ec8e775a2770956dae13c1bf1da056134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f127b5304a4d8e21ef75227f85014420a2a3b17252843788b4b700bf2e1769b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1182c88751947b342d9a79a0e16e5e352729f68818e20b291a35379e22cdeca"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
