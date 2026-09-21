class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.292.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3fa4e05240f1d721bddc0d8588ef1337e748a65047c8bc6e1c10602319165b55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e633c9fb4cdef6c8cd44bcaccf240cb9f06237fc29f3df8ecd65c454aa0328e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9404e698bf5ea68bafe012cdb86d4ddb210e9025b1dc574d3c2acc923a5aeac0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c102fb1f51db474cd50506d55bccfafdbe67308dc3600f4c4bdc8d71fbd61f9e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
