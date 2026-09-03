class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.146.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6c7c6002ea4ff1af464e819e2a3535f923669b33ea6c5552908244a0570a519f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "599f8ffea781fb64349207a12e65639234b8b06ca35367566bac99fd96a4a272"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d3a77c76b20ef11ae38c795049178fca3f4b053923a5482a4cccf8a99c6e1db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "268b71938b70fa53053e13f428b8e63ba3d4629bb00647a530e760f64a90c413"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
